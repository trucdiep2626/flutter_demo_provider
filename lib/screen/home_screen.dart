import 'package:flutter/material.dart';
import 'package:flutter_demo_app/screen/home_provider.dart';
import 'package:flutter_demo_app/screen/widgets/loading_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//import 'package:provider/provider.dart';

class HomeScreen extends HookConsumerWidget {
  HomeScreen({Key? key}) : super(key: key);

  final bankSearchController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Banks'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              TextField(
                controller: bankSearchController
                  ..addListener(
                    () {
                      ref.read(homeProvider.notifier).searchBank(bankSearchController.text);
                      // context
                      //     .read<HomeProvider>()
                      //     .searchBank(bankSearchController.text);
                    },
                  ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16.w),
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        bankSearchController.text = '';
                      },
                      icon: const Icon(Icons.close)),

                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: _buildBody(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    //final loadedType = context.watch<HomeState>().loadedType;
   return Consumer(
        builder: (_, ref, child) {
          final state = ref.watch(homeProvider);
          final loadedType = state.loadedType;
             if (loadedType == LoadedType.finish)
            {
              final bankList = state.banksDisplayList;
              if (bankList.isEmpty)
              {
                return const Center(
                  child: Text('No result found'),
                );
              } else
                {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final bank = bankList[index];
                      return Container(
                          alignment: Alignment.center,
                          height: 60.h,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: bank.logo != null? Image.network(
                                  bank.logo!,
                                  width: 50.w,
                                  height: 50.w,
                                ): Container(
                                  color: Colors.grey,
                                  width: 50.w,
                                  height: 50.w,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width -
                                    50.w -
                                    2 * 10.w -
                                    2 * 16.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${bank.shortName ?? ''} (${bank.code ?? ''})",
                                      style: TextStyle(fontSize: 16.sp),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      bank.name ??'',
                                      softWrap: true,
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ));
                    },
                    itemCount: bankList.length,
                  );
                }
            }
            if (loadedType == LoadedType.error)
            {
              return const Center(
                child: Text('Error'),
              );
            }
            return ListView.builder(
              physics:
                  const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              itemBuilder: (context, index) {
                return _buildLoadingListTileWidget();
              },
              itemCount: 10,
            );
          }
        );}



  Widget _buildLoadingListTileWidget() {
    return ListTile(
        title: LoadingWidget(width: 80.w),
        subtitle: LoadingWidget(width: 140.w),
        leading: LoadingWidget(
          width: 50.w,
          height: 50.w,
          borderRadius: 12,
        ));
  }
}

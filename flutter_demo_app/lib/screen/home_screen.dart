import 'package:flutter/material.dart';
import 'package:flutter_demo_app/screen/home_provider.dart';
import 'package:flutter_demo_app/screen/widgets/loading_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final bankSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //context.watch<HomeProvider>().getBanksList();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Banks'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              TextField(
                controller: bankSearchController
                  ..addListener(
                    () {
                      context
                          .read<HomeProvider>()
                          .searchBank(bankSearchController.text);
                    },
                  ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16.sp),
                  hintText: 'Search',
                  //hintStyle: textStyle,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        bankSearchController.text = '';
                      },
                      icon: Icon(Icons.close)),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
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
    final loadedType = context.watch<HomeProvider>().loadedType;
    if (loadedType == LoadedType.finish) {
      final bankList = context.watch<HomeProvider>().banksDisplayList;
      if (bankList.isEmpty) {
        return Center(
          child: Text('No result found'),
        );
      } else
        return ListView.builder(
          itemBuilder: (context, index) {
            final bank = bankList[index];
            return Container(
                alignment: Alignment.center,
                height: 60.sp,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Image.network(
                        bank.logo!,
                        width: 50.sp,
                        height: 50.sp,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width -
                          50.sp -
                          2 * 10.sp -
                          2 * 16.sp,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${bank.shortName!} (${bank.code!})",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          SizedBox(
                            height: 4.sp,
                          ),
                          Text(
                            bank.name!,
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
    if (loadedType == LoadedType.error) {
      return Center(
        child: Text('BankListScreenConstants.errorMessage'),
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

  Widget _buildLoadingListTileWidget() {
    return ListTile(
        title: LoadingWidget(width: 80.sp),
        subtitle: LoadingWidget(width: 140.sp),
        leading: LoadingWidget(
          width: 50.sp,
          height: 50.sp,
          borderRadius: 12,
        ));
  }
}

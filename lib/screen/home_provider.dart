import 'package:equatable/equatable.dart';
import 'package:flutter_demo_app/api/api_client.dart';
import 'package:flutter_demo_app/models/bank_model.dart';
import 'package:state_notifier/state_notifier.dart';

enum LoadedType { start, error, finish }

class HomeState extends Equatable {
  final List<BankModel> banksList;
  final List<BankModel> banksDisplayList;
  final LoadedType loadedType;

  const HomeState(
      {required this.banksList,
      required this.banksDisplayList,
      required this.loadedType});

  HomeState update(
          {List<BankModel>? banksList,
          List<BankModel>? banksDisplayList,
          LoadedType? loadedType}) =>
      HomeState(
          banksList: banksList ?? this.banksList,
          banksDisplayList: banksDisplayList ?? this.banksDisplayList,
          loadedType: loadedType ?? this.loadedType);

  @override
  List<Object?> get props => [banksList, banksDisplayList, loadedType];
}

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider()
      : super(const HomeState(
            banksList: [],
            banksDisplayList: [],
            loadedType: LoadedType.start)) {
    getBanksList();
  }

  void showLoading() {
    state = state.update(loadedType: LoadedType.start);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void hideLoading() {
    state = state.update(loadedType: LoadedType.finish);
  }

  void showError() {
    state = state.update(loadedType: LoadedType.error);
  }

  Future<void> getBanksList() async {
    try {
      showLoading();
      final response = await ApiClient.getRequest();
      if (response is List)
      {
        List<BankModel> banksList = [];
        banksList.addAll(response.map((e) => BankModel.fromJson(e)).toList());
        banksList.sort((a, b) => (a.shortName ?? '').compareTo(b.shortName ?? ''));
        state = state.update(
            banksDisplayList: banksList,
            banksList: banksList,
            loadedType: LoadedType.finish);
      }
    } catch (e) {
      showError();
    }
  }

  void searchBank(String keyword) {
    if (keyword.isNotEmpty)
    {
      showLoading();
      final banksDisplayList = state.banksList.where((bank) {
        return (bank.shortName ?? '').toLowerCase().contains(keyword) ||
            (bank.code ?? '').toLowerCase().contains(keyword);
      }).toList();
      state = state.update(
          banksDisplayList: banksDisplayList, loadedType: LoadedType.finish);
    } else
      {
        state = state.update(banksDisplayList: state.banksList);
      }
  }
}

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_demo_app/api/api_client.dart';
import 'package:flutter_demo_app/models/bank_model.dart';

enum LoadedType { start, error, finish }

class HomeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<BankModel> banksList = [];
  List<BankModel> banksDisplayList = [];
  LoadedType loadedType = LoadedType.start;

  HomeProvider() {
    getBanksList();
  }

  void showLoading() {
    loadedType = LoadedType.start;
    notifyListeners();
  }

  void hideLoading() {
    loadedType = LoadedType.finish;
    notifyListeners();
  }

  void showError() {
    loadedType = LoadedType.error;
    notifyListeners();
  }

  Future getBanksList() async {
    try {
      showLoading();
      final response = await ApiClient.getRequest();
      if (response is List) {
        banksList = response.map((e) => BankModel.fromJson(e)).toList();
        banksList.sort((a, b) => a.shortName!.compareTo(b.shortName!));
        banksDisplayList = banksList;
        hideLoading();
      }
    } catch (e) {
      showError();
    }
  }

  void searchBank(String keyword) {
    if (keyword.isNotEmpty) {
      showLoading();
      log(keyword);
      banksDisplayList = banksList.where((bank) {
        return bank.name!.toLowerCase().contains(keyword) ||
            bank.shortName!.toLowerCase().contains(keyword) ||
            bank.code!.toLowerCase().contains(keyword);
      }).toList();
      hideLoading();
    } else {
      banksDisplayList = banksList;
      notifyListeners();
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
  }
}

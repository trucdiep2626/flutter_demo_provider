import 'package:freezed_annotation/freezed_annotation.dart';
part 'bank_model.freezed.dart';
part 'bank_model.g.dart';

@freezed
class BankModel with _$BankModel {
  @JsonSerializable(explicitToJson: true)
  factory BankModel({
    int? id,
    String? name,
    String? code,
    String? bin,
    int? isTransfer,
    String? shortName,
    String? logo,
    int? support,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);
}

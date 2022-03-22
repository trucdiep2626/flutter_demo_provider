// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankModel _$$_BankModelFromJson(Map<String, dynamic> json) => _$_BankModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      bin: json['bin'] as String?,
      isTransfer: json['isTransfer'] as int?,
      shortName: json['short_name'] as String?,
      logo: json['logo'] as String?,
      support: json['support'] as int?,
    );

Map<String, dynamic> _$$_BankModelToJson(_$_BankModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'bin': instance.bin,
      'isTransfer': instance.isTransfer,
      'short_name': instance.shortName,
      'logo': instance.logo,
      'support': instance.support,
    };

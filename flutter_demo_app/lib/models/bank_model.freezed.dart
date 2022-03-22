// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankModel _$BankModelFromJson(Map<String, dynamic> json) {
  return _BankModel.fromJson(json);
}

/// @nodoc
class _$BankModelTearOff {
  const _$BankModelTearOff();

  _BankModel call(
      {int? id,
      String? name,
      String? code,
      String? bin,
      int? isTransfer,
      String? shortName,
      String? logo,
      int? support}) {
    return _BankModel(
      id: id,
      name: name,
      code: code,
      bin: bin,
      isTransfer: isTransfer,
      shortName: shortName,
      logo: logo,
      support: support,
    );
  }

  BankModel fromJson(Map<String, Object?> json) {
    return BankModel.fromJson(json);
  }
}

/// @nodoc
const $BankModel = _$BankModelTearOff();

/// @nodoc
mixin _$BankModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get bin => throw _privateConstructorUsedError;
  int? get isTransfer => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  int? get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankModelCopyWith<BankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankModelCopyWith<$Res> {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) then) =
      _$BankModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? bin,
      int? isTransfer,
      String? shortName,
      String? logo,
      int? support});
}

/// @nodoc
class _$BankModelCopyWithImpl<$Res> implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._value, this._then);

  final BankModel _value;
  // ignore: unused_field
  final $Res Function(BankModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? bin = freezed,
    Object? isTransfer = freezed,
    Object? shortName = freezed,
    Object? logo = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      bin: bin == freezed
          ? _value.bin
          : bin // ignore: cast_nullable_to_non_nullable
              as String?,
      isTransfer: isTransfer == freezed
          ? _value.isTransfer
          : isTransfer // ignore: cast_nullable_to_non_nullable
              as int?,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BankModelCopyWith<$Res> implements $BankModelCopyWith<$Res> {
  factory _$BankModelCopyWith(
          _BankModel value, $Res Function(_BankModel) then) =
      __$BankModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? code,
      String? bin,
      int? isTransfer,
      String? shortName,
      String? logo,
      int? support});
}

/// @nodoc
class __$BankModelCopyWithImpl<$Res> extends _$BankModelCopyWithImpl<$Res>
    implements _$BankModelCopyWith<$Res> {
  __$BankModelCopyWithImpl(_BankModel _value, $Res Function(_BankModel) _then)
      : super(_value, (v) => _then(v as _BankModel));

  @override
  _BankModel get _value => super._value as _BankModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? bin = freezed,
    Object? isTransfer = freezed,
    Object? shortName = freezed,
    Object? logo = freezed,
    Object? support = freezed,
  }) {
    return _then(_BankModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      bin: bin == freezed
          ? _value.bin
          : bin // ignore: cast_nullable_to_non_nullable
              as String?,
      isTransfer: isTransfer == freezed
          ? _value.isTransfer
          : isTransfer // ignore: cast_nullable_to_non_nullable
              as int?,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BankModel implements _BankModel {
  _$_BankModel(
      {this.id,
      this.name,
      this.code,
      this.bin,
      this.isTransfer,
      this.shortName,
      this.logo,
      this.support});

  factory _$_BankModel.fromJson(Map<String, dynamic> json) =>
      _$$_BankModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? bin;
  @override
  final int? isTransfer;
  @override
  final String? shortName;
  @override
  final String? logo;
  @override
  final int? support;

  @override
  String toString() {
    return 'BankModel(id: $id, name: $name, code: $code, bin: $bin, isTransfer: $isTransfer, shortName: $shortName, logo: $logo, support: $support)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.bin, bin) &&
            const DeepCollectionEquality()
                .equals(other.isTransfer, isTransfer) &&
            const DeepCollectionEquality()
                .equals(other.shortName, shortName) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.support, support));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(bin),
      const DeepCollectionEquality().hash(isTransfer),
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(support));

  @JsonKey(ignore: true)
  @override
  _$BankModelCopyWith<_BankModel> get copyWith =>
      __$BankModelCopyWithImpl<_BankModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankModelToJson(this);
  }
}

abstract class _BankModel implements BankModel {
  factory _BankModel(
      {int? id,
      String? name,
      String? code,
      String? bin,
      int? isTransfer,
      String? shortName,
      String? logo,
      int? support}) = _$_BankModel;

  factory _BankModel.fromJson(Map<String, dynamic> json) =
      _$_BankModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get bin;
  @override
  int? get isTransfer;
  @override
  String? get shortName;
  @override
  String? get logo;
  @override
  int? get support;
  @override
  @JsonKey(ignore: true)
  _$BankModelCopyWith<_BankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

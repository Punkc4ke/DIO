// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Accounting _$AccountingFromJson(Map<String, dynamic> json) {
  return _Accounting.fromJson(json);
}

/// @nodoc
mixin _$Accounting {
  int? get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get dateOfOperation => throw _privateConstructorUsedError;
  String? get transactionAmount => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountingCopyWith<Accounting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountingCopyWith<$Res> {
  factory $AccountingCopyWith(
          Accounting value, $Res Function(Accounting) then) =
      _$AccountingCopyWithImpl<$Res, Accounting>;
  @useResult
  $Res call(
      {int? number,
      String name,
      String description,
      String category,
      String dateOfOperation,
      String? transactionAmount,
      bool deleted});
}

/// @nodoc
class _$AccountingCopyWithImpl<$Res, $Val extends Accounting>
    implements $AccountingCopyWith<$Res> {
  _$AccountingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? dateOfOperation = null,
    Object? transactionAmount = freezed,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfOperation: null == dateOfOperation
          ? _value.dateOfOperation
          : dateOfOperation // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: freezed == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountingCopyWith<$Res>
    implements $AccountingCopyWith<$Res> {
  factory _$$_AccountingCopyWith(
          _$_Accounting value, $Res Function(_$_Accounting) then) =
      __$$_AccountingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number,
      String name,
      String description,
      String category,
      String dateOfOperation,
      String? transactionAmount,
      bool deleted});
}

/// @nodoc
class __$$_AccountingCopyWithImpl<$Res>
    extends _$AccountingCopyWithImpl<$Res, _$_Accounting>
    implements _$$_AccountingCopyWith<$Res> {
  __$$_AccountingCopyWithImpl(
      _$_Accounting _value, $Res Function(_$_Accounting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? dateOfOperation = null,
    Object? transactionAmount = freezed,
    Object? deleted = null,
  }) {
    return _then(_$_Accounting(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfOperation: null == dateOfOperation
          ? _value.dateOfOperation
          : dateOfOperation // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: freezed == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Accounting implements _Accounting {
  const _$_Accounting(
      {this.number,
      required this.name,
      required this.description,
      required this.category,
      required this.dateOfOperation,
      this.transactionAmount,
      required this.deleted});

  factory _$_Accounting.fromJson(Map<String, dynamic> json) =>
      _$$_AccountingFromJson(json);

  @override
  final int? number;
  @override
  final String name;
  @override
  final String description;
  @override
  final String category;
  @override
  final String dateOfOperation;
  @override
  final String? transactionAmount;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Accounting(number: $number, name: $name, description: $description, category: $category, dateOfOperation: $dateOfOperation, transactionAmount: $transactionAmount, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Accounting &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dateOfOperation, dateOfOperation) ||
                other.dateOfOperation == dateOfOperation) &&
            (identical(other.transactionAmount, transactionAmount) ||
                other.transactionAmount == transactionAmount) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, description,
      category, dateOfOperation, transactionAmount, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountingCopyWith<_$_Accounting> get copyWith =>
      __$$_AccountingCopyWithImpl<_$_Accounting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountingToJson(
      this,
    );
  }
}

abstract class _Accounting implements Accounting {
  const factory _Accounting(
      {final int? number,
      required final String name,
      required final String description,
      required final String category,
      required final String dateOfOperation,
      final String? transactionAmount,
      required final bool deleted}) = _$_Accounting;

  factory _Accounting.fromJson(Map<String, dynamic> json) =
      _$_Accounting.fromJson;

  @override
  int? get number;
  @override
  String get name;
  @override
  String get description;
  @override
  String get category;
  @override
  String get dateOfOperation;
  @override
  String? get transactionAmount;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_AccountingCopyWith<_$_Accounting> get copyWith =>
      throw _privateConstructorUsedError;
}

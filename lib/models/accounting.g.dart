// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Accounting _$$_AccountingFromJson(Map<String, dynamic> json) =>
    _$_Accounting(
      number: json['number'] as int?,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      dateOfOperation: json['dateOfOperation'] as String,
      transactionAmount: json['transactionAmount'] as String?,
      deleted: json['deleted'] == null ? false : true
    );

Map<String, dynamic> _$$_AccountingToJson(_$_Accounting instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'dateOfOperation': instance.dateOfOperation,
      'transactionAmount': instance.transactionAmount,
      'deleted': instance.deleted,
    };

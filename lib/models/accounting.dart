import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounting.g.dart';
part 'accounting.freezed.dart';

@freezed
class Accounting with _$Accounting {
  const factory Accounting({
    int? number, 
    required String name, 
    required String description, 
    required String category, required 
    String dateOfOperation, 
    String? transactionAmount,
     required bool deleted,
    }) = _Accounting;

  factory Accounting.fromJson(Map<String, dynamic> json) => _$AccountingFromJson(json);
}

import 'package:dioProject/models/accounting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AccountingListCubit extends Cubit<AccountingListState> {
  AccountingListCubit() : super(AccountingListInitial());

  void onLoad(List<Accounting> accountings) {
    emit(AccountingList(accountings));
  }
}

@immutable
abstract class AccountingListState {}

class AccountingListInitial extends AccountingListState {}

class AccountingList extends AccountingListState {
  late List<Accounting> accountings;

  AccountingList(this.accountings);
}
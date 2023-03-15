import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:dioProject/models/user.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit() : super(UserDataInitial());

  void onLoad(User user) {
    emit(UserData(user));
  }
}

@immutable
abstract class UserDataState {}

class UserDataInitial extends UserDataState {}

class UserData extends UserDataState {
  late User user;

  UserData(this.user);
}
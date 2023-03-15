import 'package:dioProject/screen/signIn_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/user_cubit.dart';
import 'cubit/accountings_state.dart';
import 'utils/api_util.dart';

void main() {
  ApiUtils.S = new ApiUtils();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context) => AccountingListCubit()),
          BlocProvider(create: (BuildContext context) => UserDataCubit()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SignInScreen(),
        ));
  }
}
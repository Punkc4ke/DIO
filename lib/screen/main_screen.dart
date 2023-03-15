import 'package:dioProject/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/accounting_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    AccountingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.article), label: "Отчеты"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Профиль")
        ],
        currentIndex: currentIndex,
        onTap: ((value) {
          setState(() {
            currentIndex = value;
          });
        }),
      ),
      body: screens[currentIndex],
    );
  }
}
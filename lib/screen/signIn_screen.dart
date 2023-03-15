import 'package:flutter/material.dart';
import 'package:dioProject/utils/api_util.dart';
import 'package:dioProject/screen/main_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    userNameController.text = "TestUser1";
    passwordController.text = "123456789";
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: userNameController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passwordController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      String userName = userNameController.text;
                      String password = passwordController.text;
                      ApiUtils.S!.login(userName, password).then((success) {
                        if (!success) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  content: Text(
                            "Неправильный логин или пароль",
                            textAlign: TextAlign.justify,
                          )));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        }
                      });
                    },
                    child: const Text("Войти")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
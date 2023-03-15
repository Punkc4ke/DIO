import 'package:dioProject/screen/main_screen.dart';
import 'package:dioProject/utils/accounting_util.dart';
import 'package:dioProject/models/accounting.dart';
import 'package:dioProject/screen/main_screen.dart';
import 'package:dioProject/utils/accounting_util.dart';
import 'package:flutter/material.dart';

import '../models/accounting.dart';

class AccountingCreateEditScreen extends StatefulWidget {
  AccountingCreateEditScreen({Accounting? accounting, Key? key}) {
    this.accounting = accounting;
    key = super.key;
  }

  late Accounting? accounting;

  State<AccountingCreateEditScreen> createState() => AccountingCreateEditScreenState(accounting);
}

class AccountingCreateEditScreenState extends State<AccountingCreateEditScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  Accounting? accounting;

  AccountingCreateEditScreenState(Accounting? accounting) {
    this.accounting = accounting;
  }

  TextEditingController nameController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  TextEditingController categoryController = new TextEditingController();
  TextEditingController transactionAmountController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (accounting != null) {
      nameController.text = accounting!.name;
      descriptionController.text = accounting!.description;
      categoryController.text = accounting!.category;
      transactionAmountController.text = accounting!.transactionAmount ?? "";
    }
    return Scaffold(
      body: Column(
        children: [
          Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Поле не должно быть пустым";
                        }
                        return null;
                      },
                      controller: nameController,
                      decoration: new InputDecoration(
                          hintText: "Название", border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Поле не должно быть пустым";
                        }
                        return null;
                      },
                      controller: descriptionController,
                      decoration: new InputDecoration(
                          hintText: "Описание", border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Поле не должно быть пустым";
                        }
                        return null;
                      },
                      controller: categoryController,
                      decoration: new InputDecoration(
                          hintText: "Категория", border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value == "") {
                          return "Поле не должно быть пустым";
                        }
                        return null;
                      },
                      controller: transactionAmountController,
                      decoration: new InputDecoration(
                          hintText: "Итоговая сумма операции", border: OutlineInputBorder()),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          },
                          child: Text("Назад")),
                      ElevatedButton(
                          onPressed: () {
                            if (!formKey.currentState!.validate()) {
                              return;
                            }
                            if (accounting != null) {
                              Accounting updateAccounting = new Accounting(
                                  number: accounting!.number,
                                  name: nameController.text,
                                  description: descriptionController.text,
                                  category: categoryController.text,
                                  dateOfOperation: "dateOfOperation",
                                  transactionAmount: transactionAmountController.text,
                                  deleted: false);
                              AccountingUtils()
                                  .updateAccounting(updateAccounting)
                                  .then((success) {
                                if (!success) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                          content: Text(
                                    "Ошибка сохранения данных",
                                    textAlign: TextAlign.justify,
                                  )));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                          content: Text(
                                    "Успешное сохранение данных отчета",
                                    textAlign: TextAlign.justify,
                                  )));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                }
                              });
                            }
                            else {
                              Accounting createAccounting = new Accounting(
                                  number: 0,
                                  name: nameController.text,
                                  description: descriptionController.text,
                                  category: categoryController.text,
                                  dateOfOperation: "dateOfOperation",
                                  transactionAmount: transactionAmountController.text,
                                  deleted: false);
                              AccountingUtils()
                                  .createAccounting(createAccounting)
                                  .then((success) {
                                if (!success) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                          content: Text(
                                    "Ошибка сохранения данных",
                                    textAlign: TextAlign.justify,
                                  )));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                          content: Text(
                                    "Успешное сохранение данных отчета.",
                                    textAlign: TextAlign.justify,
                                  )));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                }
                              });
                            }
                          },
                          child: Text("Сохранить"))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
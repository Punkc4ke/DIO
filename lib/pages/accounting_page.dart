import 'package:dioProject/cubit/accountings_state.dart';
import 'package:dioProject/screen/accounting_create_edit_page.dart';
import 'package:dioProject/utils/accounting_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/accounting.dart';

class AccountingPage extends StatefulWidget {
  const AccountingPage({Key? key}) : super(key: key);

  State<AccountingPage> createState() => AccountingPageState();
}

class AccountingPageState extends State<AccountingPage> {
  List<Accounting>? accountings;

  @override
  void initState() {
    accountings = List.empty();
    AccountingUtils().getAccountings(filter: filter).then((value) async {
      accountings = value;
      context.read<AccountingListCubit>().onLoad(accountings!);
    });
    super.initState();
  }

  String filter = "";

  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 114, 139, 207),
        title: SizedBox(
          width: double.infinity,
          height: 40,
          child: Center(
            child: TextField(
              controller: searchController,
              onSubmitted: (value) => AccountingUtils()
                  .getAccountings(filter: filter, search: value)
                  .then((value) async {
                accountings = value;
                context.read<AccountingListCubit>().onLoad(accountings!);
              }),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                suffixIcon: ElevatedButton(
                    onPressed: () {
                      searchController.text = "";
                      AccountingUtils().getAccountings(filter: filter).then((value) async {
                        accountings = value;
                        context.read<AccountingListCubit>().onLoad(accountings!);
                      });
                    },
                    child: Icon(Icons.close)),
                prefixIcon: PopupMenuButton(
                  tooltip: "Сортировка",
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: const Text("Добавленные"),
                      onTap: () {
                        filter = '';
                        AccountingUtils()
                            .getAccountings(filter: filter)
                            .then((value) async {
                          accountings = value;
                          context.read<AccountingListCubit>().onLoad(accountings!);
                        });
                      },
                    ),
                    PopupMenuItem(
                      child: const Text("Удаленные"),
                      onTap: () {
                        filter = 'deleted';
                        AccountingUtils()
                            .getAccountings(filter: filter)
                            .then((value) async {
                          accountings = value;
                          context.read<AccountingListCubit>().onLoad(accountings!);
                        });
                      },
                    ),
                    PopupMenuItem(
                      child: const Text("Все"),
                      onTap: () {
                        filter = 'all';
                        AccountingUtils()
                            .getAccountings(filter: filter)
                            .then((value) async {
                          accountings = value;
                          context.read<AccountingListCubit>().onLoad(accountings!);
                        });
                      },
                    ),
                  ],
                  icon: const Icon(Icons.filter_alt, color: Colors.white),
                ),
                hintText: 'Поиск',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AccountingCreateEditScreen()));
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<AccountingListCubit, AccountingListState>(
        builder: (context, state) {
          if (state is AccountingList) {
            accountings = (state as AccountingList).accountings;
          }
          return ListView.builder(
            itemCount: accountings!.length,
            itemBuilder: (context, index) => Card(
              color: Color.fromARGB(255, 167, 205, 219),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountingCreateEditScreen(
                              accounting: accountings!.elementAt(index))));
                },
                title: Text(accountings!.elementAt(index).name),
                subtitle: Text(accountings!.elementAt(index).description),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          AccountingUtils()
                              .deleteAccounting(accountings!.elementAt(index))
                              .then((success) {
                            if (success) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      content: Text(
                                "Отчет успешно удалён",
                                textAlign: TextAlign.justify,
                              )));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      content: Text(
                                "Ошибка удаления отчета",
                                textAlign: TextAlign.justify,
                              )));
                            }
                            AccountingUtils()
                                .getAccountings(filter: filter)
                                .then((value) async {
                              accountings = value;
                              context.read<AccountingListCubit>().onLoad(accountings!);
                            });
                          });
                        },
                        child: const Icon(Icons.delete)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
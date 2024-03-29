import 'package:flutter/material.dart';
import 'package:test1/latihan_api/components/user_card.dart';
import 'package:test1/latihan_api/data/user.dart';
import 'package:test1/latihan_api/models/user.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    print('GET USERS');
    var result = await UserDataSource.getUsers();
    setState(() {
      users = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            users.length,
            (index) => UserCard(
              user: users[index],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test1/latihan_api/models/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(''),
                Column(
                  children: [
                    Text('Text'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test1/latihan_api/models/user.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key, this.user}) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return const Text('Tidak ada data');
    }
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            user!.attributes.avatar,
            height: 128,
            width: 128,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(user!.attributes.firstName +
            ' ' +
            user!.attributes.lastName +
            ' (' +
            user!.id +
            ')'),
        Text(user!.attributes.email),
      ],
    );
  }
}

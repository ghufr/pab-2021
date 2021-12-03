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
            user!.avatar,
            height: 128,
            width: 128,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(user!.firstName + ' ' + user!.lastName + ' (' + user!.id + ')'),
        Text(user!.email),
      ],
    );
  }
}

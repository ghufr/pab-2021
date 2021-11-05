import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.black38,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://picsum.photos/seed/22/400/300?grayscale'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Profile()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Register"),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}

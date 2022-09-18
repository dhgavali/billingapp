import 'package:flutter/material.dart';
import 'package:mi_vender/routes.dart';
import 'package:mi_vender/screens/homepage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (route) => false);
            },
            title: const Text(
              "Homepage",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mi_vender/routes.dart';
import 'package:mi_vender/screens/homepage.dart';
import 'package:mi_vender/screens/widgets/card_wid.dart';

class SelectStore extends StatelessWidget {
  const SelectStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select store type",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 40,
              runSpacing: 20,
              children: [
                StoreCards(
                  onpress: () {
                    Routes().push(context, const HomePage());
                  },
                  icon: Icons.home_rounded,
                  title: "MI HOME",
                ),
                StoreCards(
                  onpress: () {
                    Routes().push(context, const HomePage());
                  },
                  icon: Icons.store_rounded,
                  title: "MI STORE",
                ),
                StoreCards(
                  onpress: () {
                    Routes().push(context, const HomePage());
                  },
                  icon: Icons.other_houses_rounded,
                  title: "Other",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

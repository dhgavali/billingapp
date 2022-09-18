import 'package:flutter/material.dart';
import 'package:mi_vender/routes.dart';
import 'package:mi_vender/screens/mydrawer.dart';
import 'package:mi_vender/screens/select_cat.dart';
import 'package:mi_vender/screens/widgets/card_wid.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Welcome to MI Store"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 40,
              runSpacing: 20,
              children: [
                StoreCards(
                  onpress: () {
                    Routes().push(context, const SelectCat());
                  },
                  icon: Icons.receipt,
                  title: "Create Order",
                ),
                StoreCards(
                  onpress: () {
                    Routes().push(context, const HomePage());
                  },
                  icon: Icons.track_changes,
                  title: "Track Past Orders",
                ),
                StoreCards(
                  onpress: () {
                    Routes().push(context, const HomePage());
                  },
                  icon: Icons.inventory_2_outlined,
                  title: "Inventory",
                ),
                StoreCards(
                  onpress: () {
                    Routes().push(context, const HomePage());
                  },
                  icon: Icons.manage_accounts,
                  title: "Store Management",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

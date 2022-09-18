import 'package:flutter/material.dart';
import 'package:mi_vender/routes.dart';
import 'package:mi_vender/screens/homepage.dart';
import 'package:mi_vender/screens/mydrawer.dart';
import 'package:mi_vender/screens/products_page.dart';
import 'package:mi_vender/screens/widgets/card_wid.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Welcome to MI Store"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Select Product",
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
                        Routes().push(context, const ProductsPage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                    StoreCards(
                      onpress: () {
                        Routes().push(context, const HomePage());
                      },
                      icon: Icons.phone_android_rounded,
                      title: "product 1",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

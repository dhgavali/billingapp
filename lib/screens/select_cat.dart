import 'package:flutter/material.dart';
import 'package:mi_vender/routes.dart';
import 'package:mi_vender/screens/homepage.dart';
import 'package:mi_vender/screens/mydrawer.dart';
import 'package:mi_vender/screens/products_list.dart';
import 'package:mi_vender/screens/widgets/card_wid.dart';

class SelectCat extends StatelessWidget {
  const SelectCat({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Select Product Category",
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
                      Routes().push(context, const ProductsList());
                    },
                    icon: Icons.phone_android_rounded,
                    title: "Smart Phone",
                  ),
                  StoreCards(
                    onpress: () {},
                    icon: Icons.tv_rounded,
                    title: "TV",
                  ),
                  StoreCards(
                    onpress: () {},
                    icon: Icons.laptop_chromebook_rounded,
                    title: "Laptop",
                  ),
                  StoreCards(
                    onpress: () {},
                    icon: Icons.cable_sharp,
                    title: "Accessories",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

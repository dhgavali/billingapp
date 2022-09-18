import 'package:flutter/material.dart';
import 'package:mi_vender/screens/mydrawer.dart';
import 'package:mi_vender/shared/responsive.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: ElevatedButton(
          child: const Text(
            "place order",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text("Product Details"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Responsive.isMobile(context)
              ? Column(
                  children: const [
                    ProductPhoto(
                      ismobile: true,
                    ),
                    Description(
                      ismobile: true,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                      ProductPhoto(
                        ismobile: false,
                      ),
                      Description(
                        ismobile: false,
                      ),
                    ]),
        ));
  }
}

class ProductPhoto extends StatelessWidget {
  final bool ismobile;

  const ProductPhoto({super.key, required this.ismobile});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: ismobile ? width * 0.8 : width * 0.35,
      height: ismobile ? width * 0.5 : width * 0.4,
      child: Icon(
        Icons.smartphone,
        size: width * 0.3,
      ),
    );
  }
}

class Description extends StatelessWidget {
  final bool ismobile;

  const Description({super.key, required this.ismobile});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: ismobile ? width * 0.8 : width * 0.35,
      height: ismobile ? width * 0.5 : width * 0.4,
      child: SingleChildScrollView(
        child: Column(children: const [
          Text("Product Type:  Smartphone"),
          Text("Model Name:  Model 1"),
          Text("Color:  red"),
          Text("Description : "),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(overflow: TextOverflow.visible),
          ),
        ]),
      ),
    );
  }
}

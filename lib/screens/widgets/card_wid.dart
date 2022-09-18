import 'package:auto_size_text/auto_size_text.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:mi_vender/shared/constants.dart';
import 'package:mi_vender/shared/responsive.dart';

class StoreCards extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onpress;

  const StoreCards(
      {super.key,
      required this.title,
      required this.icon,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onpress,
      child: ClayContainer(
        borderRadius: 10,
        depth: 15,
        surfaceColor: Color.fromARGB(255, 225, 241, 255),
        width: Responsive.isMobile(context) ? width * 0.4 : width * 0.15,
        height: Responsive.isMobile(context) ? width * 0.4 : width * 0.15,
        color: Consts.kbase,
        curveType: CurveType.concave,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            size: Responsive.isMobile(context) ? 48 : 72,
            color: Colors.grey,
          ),
          SizedBox(
            height: width * 0.01,
          ),
          AutoSizeText(
            title,
            // style: TextStyle(fontSize: 20),
            minFontSize: 16,
            maxFontSize: 20,
            maxLines: 1,
            wrapWords: false,
          )
        ]),
      ),
    );
  }
}

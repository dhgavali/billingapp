import 'package:flutter/material.dart';
import 'package:mi_vender/shared/constants.dart';
import 'package:mi_vender/shared/responsive.dart';

class CButton extends StatelessWidget {
  final Function() onpress;
  final Widget child;

  const CButton({super.key, required this.onpress, required this.child});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: Responsive.isMobile(context) ? size.width * 0.7 : size.width * 0.4,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Consts.kprimary)),
          onPressed: onpress,
          child: child),
    );
  }
}

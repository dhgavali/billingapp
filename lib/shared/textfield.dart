import 'package:flutter/material.dart';
import 'package:mi_vender/shared/responsive.dart';

// Widget CTextField(
//     {required double width,
//     required double height,
//     required TextEditingController controller,
//     required String label,
//     required String hint}) {
//   return Container(
//     width: width * 0.8,
//     height: 50,
//     child: TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         border: const OutlineInputBorder(),
//         label: Text(label),
//         hintText: hint,
//       ),
//     ),
//   );
// }

class CTextField extends StatelessWidget {
  final double width;
  final double height;
  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?) validator;
  final bool isobsecure;
  const CTextField({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
    required this.label,
    required this.hint,
    required this.validator,
    this.isobsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context) ? width * 0.7 : width * 0.4,
      height: Responsive.isMobile(context) ? 50 : 70,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isobsecure,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(label),
          hintText: hint,
        ),
      ),
    );
  }
}

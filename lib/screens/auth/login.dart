import 'package:flutter/material.dart';
import 'package:mi_vender/routes.dart';
import 'package:mi_vender/screens/select_store.dart';
import 'package:mi_vender/shared/btns.dart';
import 'package:mi_vender/shared/constants.dart';
import 'package:mi_vender/shared/responsive.dart';
import 'package:mi_vender/shared/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Consts.kbglight,
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CTextField(
                validator: (value) => null,
                width: width,
                height: height,
                controller: _userNameController,
                label: "Username",
                hint: "Enter username"),
            const SizedBox(
              height: 20,
            ),
            CTextField(
              validator: (value) => null,
              width: width,
              height: height,
              controller: _pwdController,
              label: "password",
              hint: "Enter password",
              isobsecure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CButton(
                onpress: () {
                  Routes().push(context, const SelectStore());
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Consts.kbglight,
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mi_vender/screens/mydrawer.dart';
import 'package:mi_vender/shared/btns.dart';
import 'package:mi_vender/shared/constants.dart';
import 'package:mi_vender/shared/textfield.dart';

class OrderOne extends StatelessWidget {
  OrderOne({Key? key}) : super(key: key);
  final bool businessCom = false;
  final TextEditingController _custName = TextEditingController();
  final TextEditingController _Address = TextEditingController();
  final TextEditingController _quantity = TextEditingController();
  final TextEditingController _productSN = TextEditingController();
  final TextEditingController _operatorID = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _mobileNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    _operatorID.text = "12345";
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text("Welcome to MI Store"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Order Details",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            CTextField(
              width: width,
              height: 45,
              controller: _operatorID,
              label: "Operator ID",
              hint: "",
              validator: (value) => null,
            ),
            CTextField(
              width: width,
              height: 45,
              controller: _custName,
              label: "Customer Name",
              hint: "",
              validator: (value) => null,
            ),
            CTextField(
              width: width,
              height: 45,
              controller: _mobileNo,
              label: "Mobile Number",
              hint: "Enter mobile number",
              textInputType: TextInputType.number,
              validator: (value) => null,
            ),
            CTextField(
              width: width,
              height: 45,
              controller: _email,
              label: "Email Id",
              hint: "Enter email ID",
              textInputType: TextInputType.emailAddress,
              validator: (value) => null,
            ),
            const Text("Choice of Business Communication",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              width: width * 0.4,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Radio(
                    value: "Whatsapp",
                    groupValue: "Whatsapp",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
                Text("Whatsapp"),
                SizedBox(
                  width: 25,
                ),
                Radio(
                    value: "Email",
                    groupValue: "Emails",
                    onChanged: (value) {}),
                Text("Email"),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "Product Delivery type",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              width: width * 0.4,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Radio(
                    value: "Home Deliver",
                    groupValue: "Home Dyeliver",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
                Text("Home Delivery"),
                SizedBox(
                  width: 25,
                ),
                Radio(
                    value: "Email", groupValue: "Email", onChanged: (value) {}),
                Text("In Store Purchase"),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "Payment Type",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              width: width * 0.4,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Radio(
                    value: "Home Deliver",
                    groupValue: "Home Dyeliver",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
                Text("CASH"),
                SizedBox(
                  width: 25,
                ),
                Radio(
                    value: "Email", groupValue: "Email", onChanged: (value) {}),
                Text("ONLINE ( UPI / CARD/ NET BANKING )"),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            CButton(
                onpress: () {},
                child: Text("Continue", style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}

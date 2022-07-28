import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trader/components/input_fields.dart';
import 'package:trader/components/my_buttons.dart';
import 'package:trader/controllers/getx_controller.dart';
import 'package:trader/pages/main_page.dart';
import 'package:trader/pages/phone_confirm.dart';
import 'package:trader/pages/policy.dart';
import 'package:trader/variables/myvariables.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Controller controller = Get.put(Controller());

  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Row(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    width: size.width * 0.4,
                    margin: EdgeInsets.all(size.width * 0.05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(color31),
                    ),
                    child: TextButton(
                      onPressed: () {
                        controller.changeLanguage("fn", "Farsi");
                      },
                      child: Text(
                        "فارسی",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontfamily,
                        ),
                      ),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    width: size.width * 0.4,
                    margin: EdgeInsets.all(size.width * 0.05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(color31),
                    ),
                    child: TextButton(
                      onPressed: () {
                        controller.changeLanguage("en", "US");
                      },
                      child: Text(
                        "English",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontfamily,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.05),
              child: Image.asset("assets/images/logo.png"),
            ),
            Center(
              child: Text(
                "lginfrm".tr,
                style: TextStyle(
                  color: Color(color31),
                  fontFamily: fontfamily,
                ),
              ),
            ),
            InputField(
              labelText: "phone".tr,
              fillColor: Color(color31),
              width: size.width * 0.8,
              backgroundColor: Color(color31),
              controller: phone,
              keyboardType: TextInputType.phone,
            ),
            InputField(
              labelText: "password".tr,
              width: size.width * 0.8,
              backgroundColor: Color(color31),
              fillColor: Color(color31),
              obscureText: true,
              controller: password,
              keyboardType: TextInputType.text,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const PhoneConfirm());
                  },
                  child: Text(
                    "forgot".tr,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 82, 163, 230),
                      fontWeight: FontWeight.w500,
                      fontFamily: fontfamily,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            MyButton(
              width: size.width * 0.8,
              backgroundColor: Color(color31),
              color: Colors.white,
              name: "signin".tr,
              onPress: () {
                Get.to(
                  // ignore: prefer_const_constructors
                  () => MainScreen(),
                );
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 30,
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const Policy(),
                    );
                  },
                  child: Text(
                    "mkacnt".tr,
                    style: TextStyle(
                      color: Color(color31),
                      fontWeight: FontWeight.w500,
                      fontFamily: fontfamily,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}

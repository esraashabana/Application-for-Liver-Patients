import 'package:firebase_task/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/app_language.dart';

class MyLangs extends StatefulWidget {
  const MyLangs({Key? key}) : super(key: key);

  @override
  _MyLangsState createState() => _MyLangsState();
}

class _MyLangsState extends State<MyLangs> {
  var _value;
  @override
  void initState() {
    _value = "en";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _value == "en" ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: GetBuilder<AppLanguage>(
          init: AppLanguage(),
          builder: ((controller) {
            return  ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                ListTile(
                    onTap: () {},
                    leading: Text(
                      "Arabic".tr,
                      style: TextStyle(fontSize: 25),
                    ),
                    trailing: Radio(
                     activeColor: kPrimaryColor,
                      value: "ar",
                      groupValue: controller.AppLang,
                      onChanged: (String? value) {
                        controller.changeLanguage(value!);
                        Get.updateLocale(Locale(value));
                      },
                    )),
                ListTile(
                    onTap: () {},
                    leading: Text(
                      "English".tr,
                      style: TextStyle(fontSize: 25),
                    ),
                    trailing: Radio(
                      activeColor: kPrimaryColor,
                      value: "en",
                      groupValue: controller.AppLang,
                      onChanged: (String? val) {
                        controller.changeLanguage(val!);
                        Get.updateLocale(Locale(val));
                      },
                    )),
                Divider(thickness: 3,),
              ],
            );
          }),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/colors.dart';
import '../controller/theme.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    themeController themecontroller = Get.put(themeController());
    ColorController colorController = Get.put(ColorController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Palette"),
        centerTitle: true,
        actions: [
          GetBuilder<themeController>(builder: (_) {
            return Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.white,
                value: themecontroller.dark,
                onChanged: (val) {
                  themecontroller.themeChange(val);
                });
          }),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "Color Palette",
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontSize: 10.w,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "Generator",
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontSize: 10.w,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          GetBuilder<ColorController>(builder: (c) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 12.h,
                  width: 38.5.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(colorController.colorCode.colorcode,
                        600, colorController.colorCode.colorcode, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
                Container(
                  height: 10.h,
                  width: 38.5.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                        800,
                        colorController.colorCode.colorcode,
                        colorController.colorCode.colorcode,
                        1),
                  ),
                ),
                Container(
                  height: 10.h,
                  width: 38.5.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(colorController.colorCode.colorcode,
                        200, colorController.colorCode.colorcode, 1),
                  ),
                ),
                Container(
                  height: 10.h,
                  width: 38.5.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                        600, 100, colorController.colorCode.colorcode, 1),
                  ),
                ),
                Container(
                  height: 10.h,
                  width: 38.5.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                        500, 200, colorController.colorCode.colorcode, 1),
                  ),
                ),
                Container(
                  height: 10.h,
                  width: 38.5.w,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(
                        colorController.colorCode.colorcode, 500, 200, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            );
          }),
          InkWell(
            onTap: () {
              BorderRadius.circular(5.w);
              colorController.ColorChange();
            },
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.w),
                border: Border.all(color: Colors.blue, width: 1.w),
              ),
              child: Container(
                height: 7.h,
                width: 50.w,
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(
                    // color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 6.w,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_scroll_animation_demo/components/parallax_widget.dart';
import 'package:flutter_scroll_animation_demo/controller/my_scroll_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<MyScrollController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyScrollController());
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            controller.onChangeScroll(v);
          }
          return true;
        },
        child: Obx(() => Stack(
              children: [
                ParallaxWidget(
                    top: controller.rateZero.value, asset: "parallax0"),
                ParallaxWidget(
                    top: controller.rateOne.value, asset: "parallax1"),
                ParallaxWidget(
                    top: controller.rateTwo.value, asset: "parallax2"),
                ParallaxWidget(
                    top: controller.rateThree.value, asset: "parallax3"),
                ParallaxWidget(
                    top: controller.rateFour.value, asset: "parallax4"),
                ParallaxWidget(
                    top: controller.rateFive.value, asset: "parallax5"),
                ParallaxWidget(
                    top: controller.rateSix.value, asset: "parallax6"),
                ParallaxWidget(
                    top: controller.rateSeven.value, asset: "parallax7"),
                ParallaxWidget(
                    top: controller.rateEight.value, asset: "parallax8"),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: Get.height,
                        color: Colors.transparent,
                      ),
                      Container(
                        color: Color(0xff210002),
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Parallax In",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "MontSerrat-ExtraLight",
                                  letterSpacing: 1.8,
                                  color: Color(0xffffaf00)),
                            ),
                            Text(
                              "Flutter",
                              style: TextStyle(
                                  fontSize: 51,
                                  fontFamily: "MontSerrat-Regular",
                                  letterSpacing: 1.8,
                                  color: Color(0xffffaf00)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 190,
                              child: Divider(
                                height: 1,
                                color: Color(0xffffaf00),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Made By",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Montserrat-Extralight",
                                letterSpacing: 1.3,
                                color: Color(0xffffaf00),
                              ),
                            ),
                            Text(
                              "S.m. Shahi",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Montserrat-Regular",
                                letterSpacing: 1.8,
                                color: Color(0xffffaf00),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

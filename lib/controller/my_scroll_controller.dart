import 'package:get/get.dart';

class MyScrollController extends GetxController {
  RxDouble rateZero = 0.0.obs;
  RxDouble rateOne = 0.0.obs;
  RxDouble rateTwo = 0.0.obs;
  RxDouble rateThree = 0.0.obs;
  RxDouble rateFour = 0.0.obs;
  RxDouble rateFive = 0.0.obs;
  RxDouble rateSix = 0.0.obs;
  RxDouble rateSeven = 0.0.obs;
  RxDouble rateEight = 90.0.obs;

  void onChangeScroll(value) {
    rateEight.value -= value.scrollDelta / 1;
    rateSeven.value -= value.scrollDelta / 1.5;
    rateSix.value -= value.scrollDelta / 2;
    rateFive.value -= value.scrollDelta / 2.5;
    rateFour.value -= value.scrollDelta / 3;
    rateThree.value -= value.scrollDelta / 3.5;
    rateTwo.value -= value.scrollDelta / 4;
    rateOne.value -= value.scrollDelta / 4.5;
    rateZero.value -= value.scrollDelta / 5;
  }
}

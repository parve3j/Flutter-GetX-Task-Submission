import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectController extends GetxController{
  RxInt selectedIndex = 0.obs;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  double groupAligment = -1.0.obs;
}
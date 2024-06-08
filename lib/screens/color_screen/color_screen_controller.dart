import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorScreenController extends GetxController {
  List<Color> colorList = [
    Colors.black,
    Colors.blue,
    Colors.amber,
    Colors.deepOrangeAccent,
    Colors.green,
    Colors.limeAccent
  ];
  List colorText = [
    "Total Hardness (ppm)",
    "Total Chlorine (ppm)",
    "Free Chlorine (ppm)",
    "pH (ppm)",
    "Total Alkalinity (ppm)",
    "Cyanuric Acid (ppm)"
  ];
  List colorNumber = [0,110,250,500,1000,2000];
  RxList<int> colorSelectedList = [0,0,0,0,0,0].obs;
  onTap(int index,int colorIndex){
    colorSelectedList[index]= colorIndex;
  }
}

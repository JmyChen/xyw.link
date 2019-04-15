import 'package:flutter/material.dart';

class ComponetFontIcon {
  
  IconData getData(int data){
    return IconData(data, fontFamily: "iconfont");
  }

  Icon getNew(int data, {double size ,Color color}){
    return Icon(getData(data), size: size, color: color,);
  }
  
}
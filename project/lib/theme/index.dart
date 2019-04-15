import 'package:flutter/material.dart';

class ThemeList {
  
  Color primaryColor = Color.fromARGB(255, 221, 64, 55);
  Color transparentColor = Color.fromARGB(0, 0, 0, 0);

  ThemeData main;

  ThemeList(){
    main = ThemeData(
      brightness: Brightness.light,/** 亮色系 暗色系 */
      primarySwatch: Colors.red,/** 主色样本 */
      primaryColor: primaryColor,/** 主色 */
      backgroundColor: primaryColor,/** 背景色 */
      accentColor: primaryColor,/** 副色 */
      fontFamily: "iconfont",/** 字体 */
      hintColor: Color(0x70ffffff),
    );
  }

}
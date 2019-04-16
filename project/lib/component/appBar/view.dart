import 'package:flutter/material.dart';

class ComponetAppBar{

  PreferredSizeWidget data;

  PreferredSizeWidget getNew(dynamic title, {bool centerTitle = true, double elevation = 0, Color backgroundColor, List<Widget> action}){
    Widget _title;
    if(title is String){
      _title = Text(title);
    }else{
      _title = title;
    }
    data = AppBar(
      title: _title,
      centerTitle: centerTitle,
      elevation: elevation,//去除阴影
      backgroundColor: backgroundColor,
      actions: action,
    );
    return data;
  }  
}
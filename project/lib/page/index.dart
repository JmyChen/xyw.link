import 'package:flutter/material.dart';

import 'package:project/page/app/view.dart';
import 'package:project/page/app/home/view.dart';


class AppPageList {

  Widget main;
  Widget home;

  AppPageList(){
    home = newPageHome();
    main = PageMain();
  }

  Widget newPageHome(){
    return new PageHome();
  }

}
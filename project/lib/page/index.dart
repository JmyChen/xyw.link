import 'package:flutter/material.dart';

import 'package:project/page/app/view.dart';
import 'package:project/page/app/home/view.dart';
import 'package:project/page/app/wifi/view.dart';


class AppPageList {

  Widget main;
  Widget home;
  Widget wifi;

  AppPageList(){
    home = newPageHome();
    main = PageMain();
    wifi = PageWifi();
  }

  Widget newPageHome(){
    return new PageHome();
  }

}
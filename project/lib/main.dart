import 'package:flutter/material.dart';

import 'common/app.dart';

void main(){
  try {
    onEntry();
  } catch (e) {
    onError(e);
  } finally {
    onEnd();
  }
}

void onEntry(){
  print("开始");
  runApp(app.page.main);
}

void onError(e){
  print("错误 " + e.toString());
}

void onEnd(){
  print("结束");
}
import 'package:flutter/material.dart';

import 'package:project/common/app.dart';


class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app.config.appName,
      theme: app.theme.main,
      home: app.page.home,
    );
  }
}
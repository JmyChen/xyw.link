import 'package:flutter/material.dart';
import 'package:project/common/app.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        appBar: AppBar(title: Text("data"),), 
        body: Center(
          child: Text(
            "Hello",
            style: TextStyle(
              color: Color.fromARGB(250, 0, 250, 0),
            ),
          ),
        ),
      )
    );
  }
}
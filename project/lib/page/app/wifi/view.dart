import 'package:flutter/material.dart';
import 'package:project/common/app.dart';

class PageWifi extends StatefulWidget {
  @override
  _PageWifiState createState() => _PageWifiState();
}

class _PageWifiState extends State<PageWifi> {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 122, 255),
        appBar: app.componet.appBar.getNew("",backgroundColor: Color.fromARGB(0, 0, 0, 0)),
        body: Center(
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                      child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(Icons.wifi,color: Colors.white),
                        ),
                        Text("YADX-STU",style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("已连接到互联网",style: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Color.fromARGB(255, 230, 67, 64),
                      child: Text("注销",style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
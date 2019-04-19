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
        appBar: app.componet.appBar.getNew(app.config.appName,action: <Widget>[
          Icon(Icons.more_vert)
        ]), 
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: CardIteam("社团活动",Line()),
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            app.router.go(context, app.page.wifi);
          },
        ),
      )
    );
  }
}


class CardIteam extends StatelessWidget {

  final String title;
  final Widget content;

  CardIteam(this.title,this.content);

  @override
  Widget build(BuildContext context) {
    return(
      Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Material(
                  elevation: 5,
                  shadowColor: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(30, 25, 30, 20),
                    child: content,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text("$title",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      )
    );
  }
}

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("1-Icon"),
                  ),
                  Container(
                    child: Text("1-Title"),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("1-Icon"),
                  ),
                  Container(
                    child: Text("1-Title"),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text("1-Icon"),
                  ),
                  Container(
                    child: Text("1-Title"),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  } 
}
import 'package:flutter/material.dart';

class Router {

  Future go (BuildContext  context, Widget page) {
    //MaterialPageRoute _route = MaterialPageRoute(builder: (BuildContext context){return page;});

    PageRouteBuilder _route = PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {return page;},
        transitionDuration: const Duration(milliseconds: 500),
        transitionsBuilder:(context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(animation),
                child: child,
              ),
            );
          });

    return Navigator.of(context).push(_route);
  }

}
import 'package:flutter/material.dart';

class ComponentFadeCross {

  AnimatedCrossFadeBuilder _defaultLayoutBuilder = (Widget topChild, Key topChildKey, Widget bottomChild, Key bottomChildKey) {
    return(
      Stack(
        overflow: Overflow.clip,
        children: <Widget>[
          Positioned(
            key: topChildKey,
            left: 0.0,
            top: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: topChild,
          ),
          Positioned(
            key: bottomChildKey,
            left: 0.0,
            top: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: bottomChild,
          ),
        ],
      )
    );
  };

  AnimatedCrossFade getNew(Widget top, Widget bottom, bool showFirst, {Duration duration = const Duration(milliseconds: 500)} ){
    if(showFirst==null){showFirst=true;}
    return(
      AnimatedCrossFade(
        layoutBuilder: _defaultLayoutBuilder,
        alignment: Alignment.center,
        duration: duration,
        firstChild: top,
        secondChild: bottom,
        crossFadeState: showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      )
    );
  }
}
import 'package:project/common/app.dart';

//订阅者回调签名
typedef dynamic EventCallback(arg);


class EventBus {
  
  //私有构造函数
  EventBus._internal();

  //保存单例
  static EventBus _singleton = new EventBus._internal();

  //工厂构造函数
  factory EventBus()=> _singleton;

  //保存事件订阅者队列，key:事件名(id)，value: 对应事件的订阅者队列
  var _emap = new Map<Object, List<EventCallback>>();

  //添加订阅者
  Aevent on(eventName, EventCallback f) {
    if (eventName == null || f == null) return null;
    _emap[eventName] ??= new List<EventCallback>();
    _emap[eventName].add(f);

    return Aevent(eventName,f);
  }

  //移除订阅者
  void off(eventName, [EventCallback f]) {
    var list = _emap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  //触发事件，事件触发后该事件所有订阅者会被调用
  void fire(eventName, [arg]) async {
    //print("event \t fire \t $eventName \t $arg");
    var list = _emap[eventName];
    if (list == null) return;
    int len = list.length - 1;
    //反向遍历，防止在订阅者在回调中移除自身带来的下标错位 
    for (var i = len; i > -1; --i) {
      var result;
      EventCallback callback;
      try {
        callback = list[i];
        result = await callback(arg);//异步执行
      } catch (e) {
        //print("$e");
        print("event \t 订阅者执行错误 \t $eventName \t $arg");
        result = "off";//发生错误 取消以后的订阅
      } finally{
        if(result == "off"){//取消订阅
          off(eventName,callback);
        }
      }
    }
  }
}

class Aevent {

  String _eventName;
  EventCallback _function;

  Aevent(eventName, EventCallback function){
    _eventName = eventName;
    _function = function;
  }

  Aevent fire([arg]){
    app.event.fire(_eventName, arg);
    return this;
  }

  void off(){
    app.event.off(_eventName, _function);
  }
 
  void once([arg]){
    fire(arg).off();
  }
  
}
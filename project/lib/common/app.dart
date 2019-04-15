import 'package:project/config/index.dart';
import 'package:project/theme/index.dart';
import 'package:project/event/index.dart';
import 'package:project/router/index.dart';
import 'package:project/data/index.dart';
import 'package:project/page/index.dart';
import 'package:project/component/index.dart';
import 'package:project/net/index.dart';

class App {
  
  ConfigList config;
  ThemeList theme;
  EventBus event;
  Router router;
  DataList data;
  ComponetList componet; 
  AppPageList page;
  NetUtils net;

  App(){
  /**
   * PageList类单独初始化
   * 其余的放在init()方法中手动初始化
   * 这样需要单一实例时 app. 即可
   * 需要new新实例时 App(). 即可
   * 避免初始化过多类浪费资源
   */
    page = new AppPageList();
    this.init();
  }

  Future init() async{
    config = new ConfigList();
    theme = new ThemeList();
    data = new DataList();
    componet = new ComponetList();
    event = new EventBus();
    router = new Router();
    net = new NetUtils();
    return this;
  }
}

final App app = new App();
import 'package:project/component/appBar/view.dart';
import 'package:project/component/fontIcon/index.dart';
import 'package:project/component/fadeCross/view.dart';

class ComponetList {
  ComponetAppBar appBar;
  ComponetFontIcon fontIcon;
  ComponentFadeCross fadeCross;

  ComponetList(){
    appBar = new ComponetAppBar();
    fontIcon = new ComponetFontIcon();
    fadeCross = new ComponentFadeCross();
  }
}
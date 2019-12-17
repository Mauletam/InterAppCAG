import 'package:appcool/src/pages/acerca_de_page.dart';
import 'package:appcool/src/pages/alert_page.dart';
import 'package:appcool/src/pages/animated_container.dart';
import 'package:appcool/src/pages/avatar_page.dart';
import 'package:appcool/src/pages/cards_page.dart';
import 'package:appcool/src/pages/colaboradores_page.dart';
import 'package:appcool/src/pages/home_page.dart';
import 'package:appcool/src/pages/input_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){
return <String, WidgetBuilder>{
        '/'                   : (BuildContext context) => HomePage(), 
        'alert'               : (BuildContext context) => AlertPage(), 
        'avatar'              : (BuildContext context) => AvatarPage(),
        'card'                : (BuildContext context) => CardPage(),
        'animatedContainer'   : (BuildContext context) => AnimatedContainerPage(),
        'inputs'              : (BuildContext context) => InputPage(),
        'acercade'            : (BuildContext context) => AcercaDePage(),
        'colabs'              : (BuildContext context) => ColabsPage(),

  };
}



import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/input.dart';
import 'package:components/src/pages/slider_page.dart';


import 'package:flutter/material.dart';


Map <String, WidgetBuilder> getApplicationRoutes(){



return <String, WidgetBuilder> {
  '/'                 : (BuildContext context) => HomePage(),
  'alert'             : (BuildContext context) => alertPage(),
  'avatar'            : (BuildContext context) => avatarPage(),
  'card'              : (BuildContext context) => CardPage(),
  'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
  'inputs'            : (BuildContext context) => inputPage(),
  'slide'              : (BuildContext context) => sliderPage(),
};

}
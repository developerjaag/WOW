import 'package:flutter/material.dart';

// Pages
import 'package:wow/src/pages/home_page.dart';
import 'package:wow/src/pages/safearea_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    '1_SafeArea': (BuildContext context) => SafeAreaPage(),
  };
}

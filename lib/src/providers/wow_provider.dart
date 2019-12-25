import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _WowProvider {
  _WowProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/wow.json');
    Map dataMap = json.decode(resp);
    return dataMap['routes'];
  }
} // end class

final wowProvider = _WowProvider();

import 'package:flutter/material.dart';
import 'package:wow/src/providers/wow_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WoW'),
      ),
      body: _list(),
    );
  } // end build

  Widget _list() {
    return FutureBuilder(
      future: wowProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  } // end _list

  List<Widget> _listItems(List<dynamic> data, context) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTem = GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, opt["route"]);
        },
        child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: opt["title"],
              ),
            ],
          ),
        ),
      );
      options..add(widgetTem)..add(Divider());
    });
    return options;
  }
} // end class

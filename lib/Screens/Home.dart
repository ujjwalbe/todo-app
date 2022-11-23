import 'package:flutter/material.dart';
import '../utils/bottomSheet.dart';
import '../utils/floating_snack.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showNav = false;
  bool showFab = true;
  callback(bool value) {
    setState(() {
      showNav = value;
      showFab = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(children: <Widget>[
            Container(child: Row(children: <Widget>[Text('Hello')])),
            Container(child: Text('Test')),
          ]),
        ),
        floatingActionButton:
            FloatingActionSnackBar(showNav, callback, 200, showFab),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Offstage(
            offstage: showNav,
            child: BottomAppBar(
              notchMargin: 2.0,
              color: Colors.white,
              child: Container(
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomBottomSheet(
                          Icon(Icons.menu), callback, showNav, showFab),
                      CustomBottomSheet(
                          Icon(Icons.more), callback, showNav, showFab),
                    ]),
              ),
            )));
  }
}

import 'package:flutter/material.dart';
class FloatingActionSnackBar extends StatefulWidget {
  @override
  _FloatingActionSnackBarState createState() => _FloatingActionSnackBarState();
  final bool showNav;
  final Function(bool) callback;
  final double height ;
  bool showFab = true;
 
  FloatingActionSnackBar(this.showNav, this.callback, this.height, this.showFab);
}

class _FloatingActionSnackBarState extends State<FloatingActionSnackBar> {
  @override
  Widget build(BuildContext context) {
    bool showFab = widget.showFab;
    void controlFabState(bool show) {
    setState(() {
      showFab = show;
    });
  }
    return showFab
        ? FloatingActionButton(
          child: Icon(Icons.add),
            onPressed: () {
              var bottomSheetController = showBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: widget.height,
                        color: Colors.red,
                      ));
              controlFabState(false);
              widget.callback(true);
              bottomSheetController.closed
                  .then((value) {
                    controlFabState(true);
                    widget.callback(false);
                  });
            },
          )
        : Container();
  }

  
}

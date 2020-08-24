import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
  final Function(bool) callback;
  final bool showNav;
  final Icon icon;
  bool showFab;
  CustomBottomSheet(this.icon, this.callback, this.showNav, this.showFab);
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: widget.icon,
        onPressed: () {
          widget.callback(true);
          var bottomSheetController = showBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 400.0,
                    color: Colors.amber,
                  ));
          bottomSheetController.closed.then((value) {
            widget.callback(false);
            widget.showFab = false;
          });
        });
  }
}

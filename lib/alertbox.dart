library tabbar;

import 'package:flutter/material.dart';

class CustomAlertBox {
  static Future customAlertBox({
    @required BuildContext context,
    @required Widget displayAlertbox,
  }) {
    assert(context != null, "context is null!!");
    assert(displayAlertbox != null, "willDisplayWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                displayAlertbox,
                MaterialButton(
                  color: Colors.white30,
                  child: Text('close alertbox'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}

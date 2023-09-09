import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context, String msg, String tit,
    String buttonOK, String buttonCancel) {
  Widget btnCancel =
      ElevatedButton(onPressed: () {}, child: Text(buttonCancel));

  Widget btnOK = ElevatedButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: Text(buttonOK),
  );

  AlertDialog alert = AlertDialog(
    title: Text(tit),
    content: Text(msg),
    actions: [
      btnCancel,
      btnOK,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return alert;
      });
}

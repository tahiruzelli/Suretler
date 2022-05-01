import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

deleteEditPicker(context, Function delete, Function edit) {
  return showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Vazgeç",
            style: TextStyle(color: Colors.red),
          ),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              delete();
              Navigator.pop(context);
            },
            child: const Text("Sil", textAlign: TextAlign.left),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              edit();
              Navigator.pop(context);
            },
            child: const Text("Düzenle", textAlign: TextAlign.left),
          ),
        ],
      );
    },
  );
}

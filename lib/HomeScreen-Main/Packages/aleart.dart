import 'package:flutter/material.dart';

show(context) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
         // backgroundColor: Colors.transparent,
          title: Text("انتظررررررر من فضلك"),
          actions: [IconButton(onPressed: () {
          Navigator.pop(context);
          }, icon: Icon(Icons.delete))],
          content: Container(
            child: CircularProgressIndicator(),
          ),
        );
      });
}

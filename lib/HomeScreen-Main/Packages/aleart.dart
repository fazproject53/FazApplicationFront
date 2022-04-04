import 'package:flutter/material.dart';

show(context) {
  return showDialog(

      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          title: Text("انتظررررررر من فضلك"),
          actions: [IconButton(onPressed: () {

          }, icon: Icon(Icons.delete))],
          content: Container(
            child: CircularProgressIndicator(),
          ),
        );
      });
}

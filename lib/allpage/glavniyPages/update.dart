// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({ Key? key }) : super(key: key);

  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Text("Update"),),
    );
  }
}
import 'dart:io';

import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
        title: "hfso",
        home: Scaffold(
          appBar: AppBar(
            title: Text("hfso"),
          ),

          body: MyApp(),
        ),
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 450,
      color: Colors.grey,
      // child: Image.network("http//:www.youtube.com"),
      // child: Image.asset('asset/images/555.png'),
      child: Image.file(File('/E:/hfso project in flutter/images/Slideljpg' )),
    );
  }
}

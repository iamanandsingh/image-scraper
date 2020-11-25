import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'list.dart';
import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  List<Model> images = [];

  void jsonshow() async {
    count++;
    final response =
        await get('https://jsonplaceholder.typicode.com/photos/$count');
    final decodedJson = jsonDecode(response.body);
    final model = Model(decodedJson);

    setState(() {
      images.add(model);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("json Extraction")),
        body: Center(
          child: ListPage(images),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: jsonshow,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'models/list_model.dart';
import 'pages/show_page.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {

  // 创建Model实例
  ListModel listModel = ListModel();
  // 使用ScopedModel作为根布局
  runApp(ScopedModel(model: listModel, child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // 显示ShowPage
      home: ShowPage(),
    );
  }
}
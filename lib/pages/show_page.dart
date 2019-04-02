import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_app/models/list_model.dart';
import 'package:scoped_model_app/pages/list_page.dart';

class ShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ScopedModelDescendant<ListModel>(
            builder: (context, child, model) {
              String selected = model.selected;
              return Text(selected);
            }
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
              textColor: Colors.white,
              child: Text(
                '前往列表',
              ),
              color: Colors.lightBlue,
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ListPage();
                  })),
            ),
          ),
        ],
      )),
    );
  }
}

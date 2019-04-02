import 'package:flutter/material.dart';

class EditProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = '编辑房源';
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Container(
              child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '基本信息',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text('建筑面积')),
                          Text('150.00'),
                          Text(
                            '㎡',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    ),
                    Divider(),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text('实用面积')),
                          Text('120.00'),
                          Text(
                            '㎡',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.cyan,
                height: 10.0,
              )
            ],
          ))),
    );
  }
}

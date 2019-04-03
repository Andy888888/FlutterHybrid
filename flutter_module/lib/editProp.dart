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
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                new SliverPadding(
                  padding: const EdgeInsets.all(0.0),
                  sliver: new SliverList(
                    delegate: new SliverChildListDelegate(
                      <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '基本信息',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Text('建筑面积')),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller:
                                      TextEditingController(text: '150.00'),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    icon: Icon(Icons.attach_money),
                                    labelText: '请输入建筑面积',
                                  ),
                                  autofocus: false,
                                ),
                              ),
                              Text(
                                ' ㎡',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Text('实用面积')),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    icon: Icon(Icons.attach_money),
                                    labelText: '请输入实用面积',
                                  ),
                                  autofocus: false,
                                ),
                              ),
                              Text(
                                ' ㎡',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        FragmentDivider(),
                      ],
                    ),
                  ),
                ),
                new SliverPadding(
                  padding: const EdgeInsets.all(0.0),
                  sliver: new SliverList(
                    delegate: new SliverChildListDelegate(
                      <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Text('朝向')),
                              Text('南'),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Text('房型')),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Text('租价')),
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller:
                                      TextEditingController(text: '2222'),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10.0),
                                    icon: Icon(Icons.attach_money),
                                    labelText: '请输入租价',
                                  ),
                                  autofocus: false,
                                ),
                              ),
                              Text(
                                ' 元',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Divider(),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Text('房源属性')),
                              Text('请选择'),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        FragmentDivider(),
                      ],
                    ),
                  ),
                ),
                new SliverPadding(
                  padding: const EdgeInsets.all(0.0),
                  sliver: new SliverList(
                    delegate: new SliverChildListDelegate(
                      <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '出租点评',
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        MultiInput(),
                        BottomLine(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class FragmentDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color.fromARGB(255, 245, 245, 240),
      height: 10.0,
    );
  }
}

class MultiInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.all(10),
        color: Color.fromARGB(222, 240, 240, 240),
        child: Theme(
          data: new ThemeData(
            primaryColor: Color.fromARGB(255, 222, 222, 222),
            hintColor: Color.fromARGB(255, 222, 222, 222),
          ),
          child: TextField(
            maxLines: 10,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ));
  }
}

class BottomLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(),
          ),
          Text(
            '我是有底线的',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          Expanded(
            child: Divider(),
          )
        ],
      ),
    );
  }
}

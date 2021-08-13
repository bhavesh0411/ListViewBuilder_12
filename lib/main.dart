import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'ListView.builder',
      home: ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ListView.Builder'),
      ),
      body: ListView.builder(
        itemCount: 8, //change the number to number of listTile(item) on the screen
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list),
            trailing: Icon(Icons.star_border, size: 20, color: Colors.red,),
            title: Text('List item $index'),
          );
        },
      ),
    );
  }
}

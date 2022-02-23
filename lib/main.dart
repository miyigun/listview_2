import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListViewBody(),
      ),
    );
  }
}

class ListViewBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context){
  //Resimlerle ListView
  return ListView(
    children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/1.jpg"),
        ),
        title: Text("1.Resim"),
        subtitle: Text("Avatar-1 gösterildi"),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/2.jpg"),
        ),
        title: Text("2.Resim"),
        subtitle: Text("Avatar-2 gösterildi"),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/3.jpg"),
        ),
        title: Text("3.Resim"),
        subtitle: Text("Avatar-3 gösterildi"),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/4.jpg"),
        ),
        title: Text("4.Resim"),
        subtitle: Text("Avatar-4 gösterildi"),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/5.jpg"),
        ),
        title: Text("5.Resim"),
        subtitle: Text("Avatar-5 gösterildi"),
      ),
    ],
  );
    //Iconlu ListView
    /*ListView(
    children: [
      ListTile(
        leading: Icon(Icons.wb_sunny),
        title: Text("Flutter"),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
          leading: Icon(Icons.brightness_3),
          title: Text("Python"),
          trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
          leading: Icon(Icons.star),
          title: Text("Java"),
          trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
          leading: Icon(Icons.local_florist),
          title: Text("Pascal"),
          trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );*/
  // horizontal ListView
  /*return ListView.builder(
    scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 1.0),
          color: Colors.tealAccent,
          child: Text('$index'),
        );
      }
  );*/
}
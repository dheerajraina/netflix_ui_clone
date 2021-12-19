import 'package:flutter/material.dart';
import 'package:netfllix_clone/screens/home_page.dart';


class MyList extends StatefulWidget {
  // const MyList({ Key? key }) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("My List"),
      ),
    );
  }
}
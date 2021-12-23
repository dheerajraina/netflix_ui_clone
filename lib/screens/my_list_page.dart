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
      appBar:AppBar(
        title: Center(
         widthFactor:4.3,
         child: Text(
           "My List",
           style: TextStyle(
             fontSize: MediaQuery.of(context).size.width*0.05,
           ),
            
           ),
       ),
      ),
      body: Center(
        child: Text("My List"),
      ),
    );
  }
}
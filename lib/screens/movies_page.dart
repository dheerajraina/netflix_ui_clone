import 'package:flutter/material.dart';
import 'package:netfllix_clone/screens/home_page.dart';
class Movies extends StatefulWidget {
  // const Movies({ Key? key }) : super(key: key);

  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(
         widthFactor:4.3,
         child: Text(
           "Movies",
           style: TextStyle(
             fontSize: MediaQuery.of(context).size.width*0.05,
           ),
            
           ),
       ),
      ),
      body: Center(
        child: Text("Movies Page"),
      ),
    );
  }
}
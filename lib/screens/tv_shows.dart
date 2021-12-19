import 'package:flutter/material.dart';
import 'package:netfllix_clone/screens/home_page.dart';
class TVShows extends StatefulWidget {
  // const TVShows({ Key? key }) : super(key: key);

  @override
  _TVShowsState createState() => _TVShowsState();
}

class _TVShowsState extends State<TVShows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("TV Screen"),
      ),
    );
  }
}
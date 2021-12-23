import 'package:flutter/material.dart';
import 'package:netfllix_clone/screens/home_page.dart';

import 'dart:math' as math;
class TVShows extends StatefulWidget {
  // const TVShows({ Key? key }) : super(key: key);

  @override
  _TVShowsState createState() => _TVShowsState();
}

class _TVShowsState extends State<TVShows> {

  
  @override
  Widget build(BuildContext context) {
    var _crossAxisSpacing = 4.0;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _crossAxisCount = 2;
    var _width = MediaQuery.of(context).size.width*0.1;
    var cellHeight = 60;
    var _aspectRatio = _width /cellHeight;
    return Scaffold(
      appBar: AppBar(
        title: Center(
         widthFactor:4,
         child: Text(
           "TV Shows",
           style: TextStyle(
             fontSize: MediaQuery.of(context).size.width*0.047,
           ),
            
           ),
       ),
      ),
      body:GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _crossAxisCount,childAspectRatio:_aspectRatio/*,crossAxisSpacing: _crossAxisSpacing*/), 
        itemBuilder: (context,index){
          return Card(
                         child:Container(
                          //  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*1),
                          //  height:MediaQuery.of(context).size.height*0.03 ,
                          //  width:MediaQuery.of(context).size.height*0.2,
                           decoration: BoxDecoration(
                            //  color: Colors.red,
                            
                            borderRadius: BorderRadius.circular(20),
                            color:Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                           ),
                         ) ,
                       );
        },
        ),
      
    );
  }
}
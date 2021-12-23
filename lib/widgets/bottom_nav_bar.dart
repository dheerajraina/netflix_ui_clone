import 'package:flutter/material.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({ Key? key }) : super(key: key);

  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
             backgroundColor: Colors.black,
             unselectedItemColor:Colors.white54,
             selectedItemColor: Colors.white,
             unselectedLabelStyle: TextStyle(
               color: Colors.white54,
             ),
             selectedLabelStyle: TextStyle(
               color: Colors.white,
             ),
            
             items:[
               BottomNavigationBarItem(
                 icon: Icon(Icons.home,
                //  color: Colors.white70,
                 ),
                 label:"Home,"
                 ),
                 BottomNavigationBarItem(
                   
                 icon: Icon(
                   Icons.search,
                  //  color: Colors.white70,
                   ),
                 label: "Search",

                 ),
                 BottomNavigationBarItem(
                 icon: Icon(Icons.download,
                //  color: Colors.white70,
                 ),
                 label: "Download",
                 ),
                 BottomNavigationBarItem(
                 icon: Icon(Icons.more,
                //  color: Colors.white70,
                 ),
                 label: "More",
                 ),
             ], 
             );
  }
}
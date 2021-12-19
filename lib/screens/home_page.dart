import 'package:flutter/material.dart';
import 'package:netfllix_clone/screens/movies_page.dart';
import 'package:netfllix_clone/screens/my_list_page.dart';
import 'dart:math' as math;
import 'package:netfllix_clone/screens/tv_shows.dart';
import 'package:flutter/rendering.dart';



class HomePage extends StatefulWidget{
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _showAppBar=false;
  bool _isScrollingDown=false;
   late ScrollController _scrollViewController;
  @override
  void initState(){
    super.initState();
    _scrollViewController=new ScrollController();

    _scrollViewController.addListener(() {
      
      if (_scrollViewController.position.userScrollDirection==ScrollDirection.reverse){
          if(!_isScrollingDown){
            
            setState(() {
              _isScrollingDown=!_isScrollingDown;
            _showAppBar=!_showAppBar;
            });
          }
      }
       if (_scrollViewController.position.userScrollDirection==ScrollDirection.forward){
          if(_isScrollingDown){
            
            setState(() {
              _isScrollingDown=!_isScrollingDown;
            _showAppBar=!_showAppBar;
            });
          }
      }
    });

  }

  @override
  void dispose(){
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() { });
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Theme.of(context).primaryColorDark,
      
     body:SafeArea(


       child: Column(
         children: [
         
           AnimatedContainer(
             height: _showAppBar?60:0,
             duration: Duration(milliseconds: 300),
             child: Row(
               children: [
                 Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.29,/*left: MediaQuery.of(context).size.width*0.01*/  )),
                              TextButton(
                                onPressed: (){
                                   print("HomeBar");
                                 },
                                child: Image.network(
                                  "https://img.icons8.com/external-tal-revivo-color-tal-revivo/96/000000/external-netflix-an-american-video-on-demand-service-logo-color-tal-revivo.png",
                                  height: MediaQuery.of(context).size.width*0.06,
                                ),
                              ),
             
                              SizedBox(
                            //  height:MediaQuery.of(context).size.height*0.2,
                             width:MediaQuery.of(context).size.width*0.04,
                           ),
                               TextButton(
                                
                                 onPressed: (){
                                  //  print("Tv Bar");
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>TVShows()
                                      ),
                                      );
                                 },
                                 child: Text(
                                                            "TV Shows",
                                                            style: TextStyle(
                                 letterSpacing: MediaQuery.of(context).size.width*0.002,
                                 color: Colors.white,
                                 fontWeight:FontWeight.bold,
                                 fontSize: MediaQuery.of(context).size.width*0.043,
                                                            ),
                                                          ),
                               ),
                           SizedBox(
                            //  height:MediaQuery.of(context).size.height*0.2,
                             width:MediaQuery.of(context).size.width*0.04,
                           ),
             
                           TextButton(
                             onPressed: (){
                                  //  print("Movies Bar");
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>Movies()
                                      ),
                                      );
                                 },
                             child: Text(
                               "Movies",
                               style: TextStyle(
                                 letterSpacing: MediaQuery.of(context).size.width*0.002,
                                 color: Colors.white,
                                 fontWeight:FontWeight.bold,
                                 fontSize: MediaQuery.of(context).size.width*0.043,
                               ),
                             ),
                           ),
                           SizedBox(
                            //  height:MediaQuery.of(context).size.height*0.2,
                             width:MediaQuery.of(context).size.width*0.04,
                           ),
             
                           TextButton(
                             onPressed: (){
                                  //  print("MyList Bar");
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>MyList()
                                      ),
                                      );
                                 },
                             child: Text(
                               "My List",
                               style: TextStyle(
                                 letterSpacing: MediaQuery.of(context).size.width*0.002,
                                 color: Colors.white,
                                 fontWeight:FontWeight.bold,
                                 fontSize: MediaQuery.of(context).size.width*0.043,
                               ),
                             ),
                           ),
                          //  Divider(thickness: 2,),
               ],
             )
             
             ),
           Expanded(
             child: SingleChildScrollView(/* converts whole page into a scroll view */
               controller: _scrollViewController,
               scrollDirection: Axis.vertical,
               
               child: Column(
                
                 children: [
                   Container(
                    // color: Colors.pink,
                    //  width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height*0.7,
                    //  margin: EdgeInsets.only(left: 3),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        // color: Colors.red,
                      ),
                    // margin:EdgeInsets.only(top: 10),
                     child: Card(
                       
                       child: Stack(/* Stack to place items on over another*/
                         children: [
                           
                           ClipRRect(
                             child: Image.network(
                               'https://m.media-amazon.com/images/M/MV5BN2ZmYjg1YmItNWQ4OC00YWM0LWE0ZDktYThjOTZiZjhhN2Q2XkEyXkFqcGdeQXVyNjgxNTQ3Mjk@._V1_.jpg',
             
                               height: MediaQuery.of(context).size.height,
                               width: MediaQuery.of(context).size.width,
                               fit: BoxFit.fill,
                             ),
                           ),
                          //  SizedBox(
                          //    height:MediaQuery.of(context).size.height*1,
                          //    width:MediaQuery.of(context).size.width*1,
                          //  ),
                           Row(
                             children: [
                              Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.29,left: MediaQuery.of(context).size.width*0.03  )),
                              Image.network(
                                "https://img.icons8.com/external-tal-revivo-color-tal-revivo/96/000000/external-netflix-an-american-video-on-demand-service-logo-color-tal-revivo.png",
                                height: MediaQuery.of(context).size.width*0.1,
                              ),
             
                              SizedBox(
                            //  height:MediaQuery.of(context).size.height*0.2,
                             width:MediaQuery.of(context).size.width*0.04,
                           ),
                               TextButton(
                                 onPressed: (){
                                  //  print("Tv Shows");
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>TVShows()
                                      ),
                                      );
                                 },
                                 child: Text(
                                                            "TV Shows",
                                                            style: TextStyle(
                                 letterSpacing: MediaQuery.of(context).size.width*0.002,
                                 color: Colors.white,
                                 fontWeight:FontWeight.bold,
                                 fontSize: MediaQuery.of(context).size.width*0.043,
                                                            ),
                                                          ),
                               ),
                           SizedBox(
                            //  height:MediaQuery.of(context).size.height*0.2,
                             width:MediaQuery.of(context).size.width*0.04,
                           ),
             
                           TextButton(
                             onPressed: (){
                              //  print("Movies");
                              Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>Movies()
                                      ),
                                      );
                             },
                             child: Text(
                               "Movies",
                               style: TextStyle(
                                 letterSpacing: MediaQuery.of(context).size.width*0.002,
                                 color: Colors.white,
                                 fontWeight:FontWeight.bold,
                                 fontSize: MediaQuery.of(context).size.width*0.043,
                               ),
                             ),
                           ),
                           SizedBox(
                            //  height:MediaQuery.of(context).size.height*0.2,
                             width:MediaQuery.of(context).size.width*0.04,
                           ),
             
                           TextButton(
                             onPressed: (){
                              //  print("My List");
                              Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) =>MyList()
                                      ),
                                      );
                             },
                             child: Text(
                               "My List",
                               style: TextStyle(
                                 letterSpacing: MediaQuery.of(context).size.width*0.002,
                                 color: Colors.white,
                                 fontWeight:FontWeight.bold,
                                 fontSize: MediaQuery.of(context).size.width*0.043,
                               ),
                             ),
                           )
                
                          
                             ],
                           ),
                            
                         ],
                       ),
                     ),
                   ),
                   Row(
                              children: [
                                
                                SizedBox(
                                  //  height:MediaQuery.of(context).size.height*0.01,
                             width:MediaQuery.of(context).size.width*0.15,
                                ),
                                IconButton(
                                 onPressed:(){}, 
                                 icon:Icon(Icons.add)),
                              SizedBox(
                                  //  height:MediaQuery.of(context).size.height*0.01,
                             width:MediaQuery.of(context).size.width*0.1,
                                ),
                              Container(
                                // color: Colors.white,
                                width:MediaQuery.of(context).size.width*0.26 ,
                                height: MediaQuery.of(context).size.height*0.04,
                                decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9)
                
                                ),
                                child: Row(
                                  children: [
                                     SizedBox(
                                  //  height:MediaQuery.of(context).size.height*0.01,
                             width:MediaQuery.of(context).size.width*0.01,
                                ),
                                    IconButton(
                                      padding: EdgeInsets.only(bottom: 3),
                                      onPressed: (){}, 
                                      icon: Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.black,
                                        size:MediaQuery.of(context).size.height*0.03 ,
                                        
                                        ),),
                
                                        Text(
                                          'Play',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context).size.height*0.02,
                                            letterSpacing: MediaQuery.of(context).size.height*0.001,
                                          ),
                                          ),
                                  ],
                                ),
                
                              ),
                              SizedBox(
                                  //  height:MediaQuery.of(context).size.height*0.01,
                             width:MediaQuery.of(context).size.width*0.1,
                                ),
                                IconButton(
                                  onPressed: (){}, 
                                  icon: Icon(
                                    Icons.info_outline
                                    ),
                                    )
                              ],
                            ),

                    SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),

                 Row(
                   children: [
                     Padding(padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, )),
                     Text(
                       "Latest Trailers",
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         fontSize: MediaQuery.of(context).size.width*0.04,
                         fontWeight: FontWeight.bold,
                         letterSpacing: MediaQuery.of(context).size.width*0.002,
                       ),
                       ),
                   ],
                 ),
                 SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),
                
                 SizedBox(
                   height: MediaQuery.of(context).size.height*0.25,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     itemCount: 10,
                     itemBuilder: (context,index){
                       return Container(
                         height: 90,
                         width: MediaQuery.of(context).size.width*0.33,
                        //  color: Colors.red,
                         child: CircleAvatar(
                           minRadius: 50,
                          // radius: 80,
                           maxRadius: 90,
                           backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                         ),
                       );
                     },),
                 ),
                
                
                    SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),
                 Row(
                   children: [
                     Padding(padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, )),
                     Text(
                       "Popular on Netflix",
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         fontSize: MediaQuery.of(context).size.width*0.04,
                         fontWeight: FontWeight.bold,
                         letterSpacing: MediaQuery.of(context).size.width*0.002,
                       ),
                       ),
                   ],
                 ),
                 SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),
                
                 SizedBox(
                   height: MediaQuery.of(context).size.height*0.25,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     itemCount: 10,
                     itemBuilder: (context,index){
                       return Card(
                         child:Container(
                          //  height:MediaQuery.of(context).size.height*0.03 ,
                           width:MediaQuery.of(context).size.height*0.2,
                           decoration: BoxDecoration(
                            //  color: Colors.red,
                               color:Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                           ),
                          //  child: Column(
                          //    children: [
                          //       Image.network(
                          //        'https://m.media-amazon.com/images/M/MV5BN2ZmYjg1YmItNWQ4OC00YWM0LWE0ZDktYThjOTZiZjhhN2Q2XkEyXkFqcGdeQXVyNjgxNTQ3Mjk@._V1_.jpg',
                          //         height: MediaQuery.of(context).size.width*0.5136,
                          //         width:MediaQuery.of(context).size.width*0.7,
                          //        fit: BoxFit.fill,
                          //      ),
                          //    ],
                          //  ),
                         ) ,
                       );
                     },),
                 ),
                
                             SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),
                 Row(
                   children: [
                     Padding(padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, )),
                     Text(
                       "Trending Now",
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         fontSize: MediaQuery.of(context).size.width*0.04,
                         fontWeight: FontWeight.bold,
                         letterSpacing: MediaQuery.of(context).size.width*0.003,
                       ),
                       ),
                   ],
                 ),
                 SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),
                
                 SizedBox(
                   height: MediaQuery.of(context).size.height*0.25,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     itemCount: 10,
                     itemBuilder: (context,index){
                       return Card(
                         child:Container(
                          //  height:MediaQuery.of(context).size.height*0.03 ,
                           width:MediaQuery.of(context).size.height*0.2,
                           decoration: BoxDecoration(
                            //  color: Colors.red,
                            color:Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                           ),
                         ) ,
                       );
                     },),
                 ),

                   SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),

                 Row(
                   children: [
                     Padding(padding:EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03, )),
                     Text(
                       "Free To Watch",
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         fontSize: MediaQuery.of(context).size.width*0.04,
                         fontWeight: FontWeight.bold,
                         letterSpacing: MediaQuery.of(context).size.width*0.002,
                       ),
                       ),
                   ],
                 ),
                 SizedBox(
                             height:MediaQuery.of(context).size.height*0.03,
                             width:MediaQuery.of(context).size.width*0.07,
                           ),
                
                 SizedBox(
                   height: MediaQuery.of(context).size.height*0.25,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     itemCount: 10,
                     itemBuilder: (context,index){
                       return Card(
                         child:Container(
                          //  height:MediaQuery.of(context).size.height*0.03 ,
                           width:MediaQuery.of(context).size.height*0.2,
                           decoration: BoxDecoration(
                            //  color: Colors.red,
                               color:Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                           ),
                          //  child: Column(
                          //    children: [
                          //       Image.network(
                          //        'https://m.media-amazon.com/images/M/MV5BN2ZmYjg1YmItNWQ4OC00YWM0LWE0ZDktYThjOTZiZjhhN2Q2XkEyXkFqcGdeQXVyNjgxNTQ3Mjk@._V1_.jpg',
                          //         height: MediaQuery.of(context).size.width*0.5136,
                          //         width:MediaQuery.of(context).size.width*0.7,
                          //        fit: BoxFit.fill,
                          //      ),
                          //    ],
                          //  ),
                         ) ,
                       );
                     },),
                 ),
                 ],
               ),
             ),
           ),
         ],
       ),
     ),
      
    );
  }
}
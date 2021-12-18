

import 'package:flutter/material.dart';
// import 'package:html/dom.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix",
debugShowCheckedModeBanner: false,
    // darkTheme: ThemeData(),
     theme:ThemeData(
       primaryColorDark: Colors.black,
       brightness:Brightness.dark,
     ),
      home: HomePage(),     
     
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
     body:SingleChildScrollView(/* converts whole page into a scroll view */
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
                      Padding(padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.29,left: MediaQuery.of(context).size.width*0.08  )),
                      Image.network(
                        "https://img.icons8.com/external-tal-revivo-color-tal-revivo/96/000000/external-netflix-an-american-video-on-demand-service-logo-color-tal-revivo.png",
                        height: MediaQuery.of(context).size.width*0.1,
                      ),
     
                      SizedBox(
                    //  height:MediaQuery.of(context).size.height*0.2,
                     width:MediaQuery.of(context).size.width*0.09,
                   ),
                       Text(
                     "TV Shows",
                     style: TextStyle(
                       letterSpacing: MediaQuery.of(context).size.width*0.002,
                       color: Colors.white,
                       fontWeight:FontWeight.bold,
                       fontSize: MediaQuery.of(context).size.width*0.043,
                     ),
                   ),
                   SizedBox(
                    //  height:MediaQuery.of(context).size.height*0.2,
                     width:MediaQuery.of(context).size.width*0.07,
                   ),
     
                   Text(
                     "Movies",
                     style: TextStyle(
                       letterSpacing: MediaQuery.of(context).size.width*0.002,
                       color: Colors.white,
                       fontWeight:FontWeight.bold,
                       fontSize: MediaQuery.of(context).size.width*0.043,
                     ),
                   ),
                   SizedBox(
                    //  height:MediaQuery.of(context).size.height*0.2,
                     width:MediaQuery.of(context).size.width*0.07,
                   ),
     
                   Text(
                     "My List",
                     style: TextStyle(
                       letterSpacing: MediaQuery.of(context).size.width*0.002,
                       color: Colors.white,
                       fontWeight:FontWeight.bold,
                       fontSize: MediaQuery.of(context).size.width*0.043,
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
         ],
       ),
     ),
      
    );
  }
}
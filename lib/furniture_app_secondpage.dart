// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_app/main.dart';

import 'homepage.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Furnice Demo',
//       theme: ThemeData(),
//       home: const MySecondPage(title: 'Furnice'),
//     );
//   }
// }

class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:2.0,left:9),
            child: Column(
              children: [
    
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 400,
                        width: width/1.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/ii.jpg'),
                            ),
                            color: Colors.blueGrey[200],
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 400,
                        width: width/1.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/ii.jpg'),
                            ),
                            color: Colors.blueGrey[200],
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 400,
                        width: width/1.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/ii.jpg'),
                            ),
                            color: Colors.blueGrey[200],
                            borderRadius: BorderRadius.all(Radius.circular(12))),
    
                      ),
                    ),
                  ]),
                ),
    
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Container(
                    padding: EdgeInsets.only(left: 18),
                    height: 35,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.green[400],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
                    Text("IKEA"),
                    Spacer(),
                    Text(style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold, fontSize: 20),"\$27.76"),
                  ]),
                ),
    
    
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Teak Sofa",
                      style: TextStyle(fontSize:25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
    
    
                Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.star_rate_rounded,color: Colors.yellow.shade800,),
                        Text("4.5/5"),
                      ],
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.only(top:18.0,left: 10,right: 10),
                  child: Align(alignment: Alignment.centerLeft,
                    child: Text( style: TextStyle(color:Colors.grey[500],fontSize:15),
                        "Comfortable chair with organomic shape\ndoesn't make you tired sitting on this chair for a long period of time."
                    ),
                  ),
                ),
    
    
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(height:30,width:100,color: Colors.grey[200],
                    // decoration:BoxDecoration(border:Border.all(width: 3)),
                    child:Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          Container(width:30,height:30,color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:9.0,left:1),
                            child:Icon(color:Colors.grey[400],Icons.remove),),
                          ),
    
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Container(width:30,height:30,color: Colors.grey[200],
                              child: Padding(
                                padding: const EdgeInsets.only(left: 9.0,top:2),
                                child: Text('1',style: TextStyle(fontSize:20),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Container(width:30,height:30,color: Colors.white,
                              child:Icon(color:Colors.grey,Icons.add),),
                          ),
    
                        ],
                      ),
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10),
                  child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(height: 50,width:  MediaQuery.of(context).size.width/2.5,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.orange),),
                            onPressed: () { Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context) => MyHomePage(title:'')));
                            },
                            child:Text(style: TextStyle(color: Colors.orange),'View in All'),
                          ),
                        ),
                      ),
    
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: MaterialButton(height:50,minWidth: MediaQuery.of(context).size.width/2.5,
                          onPressed: null,
                          child: Text(style: TextStyle(color: Colors.white),'Add to Cart'),
                          disabledColor: Colors.orange,),
                      )
                    ],
                  ),
                ),
                // }
    
    
    
    
              ],
            ),
          ),
        ),
      ),
    );
  }
}

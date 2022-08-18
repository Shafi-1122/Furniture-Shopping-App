import 'package:flutter/material.dart';
import 'package:furniture_app/addedproductspage.dart';
import 'package:provider/provider.dart';

import 'ProductProvider.dart';
import 'furniture_app_secondpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furnice Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Furnice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Colors.grey,
        content: const Text('Added to Cart'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar,textColor: Colors.white,),
      ),
    );
  }
  List<bool> addedStatus=List.filled(5, false);
  List<String> pricelist = ['\$43', "\$56", "\$70", "\$101", "\$130"];
   List<String> productdetailslist = ['Teak Sofa ', "Full Cover Sofa ", "Corner setty", "Tipus Cot", "Sandal wood Premium "];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Furnice',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'Poppins',
                fontSize: 25,
                color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        // leading:  ,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                  onPressed: () {
                  Navigator.push(context,  MaterialPageRoute(builder: (context) =>  Cartlist()));
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                Text(
                  'Shop furniture with augmented reality',
                  style: TextStyle(color: Colors.black45),
                ),
                // Spacer(),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 35, right: 15),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  // cursorRadius: Radius.circular(.0),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[80],
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search furniture here",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 30, right: 15),
              child: Row(children: [
                Text(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    "New Arrival"),
                Spacer(),
                Text("View All",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
              ]),
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Container(
                      width: width/1.2,
                      height: 245,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/tt.jpg'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                         ),
                          Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Container(
                      width: width/1.2,
                      height: 245,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/tt.jpg'),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                         ),
                 ],
               ),
             ),
              Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, bottom: 8, top: 8),
              child: Row(children: [
                Text(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    " Collection"),
                Spacer(),
                Text("View All",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5, top: 5),
              child: SizedBox(
                //height: height / 1.2,
                width: width,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 500,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                    itemCount: 5,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: height / 3,
                            width: width / 2.5,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 20.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap:    (){    
                                                 Navigator.push(context,  MaterialPageRoute(builder: (context) =>  MySecondPage(title: "Secondpage")));}
                 ,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: Colors.white,
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('assets/ii.jpg'),
                                            ),
                                          ),
                                          height: 120,
                                          width: 100,
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        height: 70,
                                        width: 80,
                                        child: Text(
                                          productdetailslist[index],
                                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, left: 2),
                                        child: Text(
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 22),
                                            pricelist[index]),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        height: 40,
                                        width: 100,
                                        child: ElevatedButton(
                                        style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),),
                                          onPressed: () {
                                            setState(() {
                                              if(context.read<ProdcutProvider>().addedStatus[index]==false){
                                                _showToast(context);
                                                context.read<ProdcutProvider>().setStatus(context, index);
                                                }

                                                // / context.read<ProdcutProvider>().setStatus(context, index);
                                           
                                              
                                            });
                                           // print(productdetailslist[index]);
                                            context.read<ProdcutProvider>().setCartList(context, index);
                                            context.read<ProdcutProvider>().addedCountIncrement(context, index);
                                            // Navigator.push(context,  MaterialPageRoute(builder: (context) =>  Cartlist(titleOfProduct:productdetailslist[0],priceOfProduct: pricelist[0] ,)),);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:context.read<ProdcutProvider>().addedStatus[index]? Text("Added +${context.read<ProdcutProvider>().addedCount[index]}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w500)):Text("Add",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    }),
              ),
            ),
          
          
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey, Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey, Icons.navigation_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey, Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey, Icons.account_circle_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}

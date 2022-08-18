import 'package:flutter/material.dart';
import 'package:furniture_app/ProductProvider.dart';

import 'package:furniture_app/main.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

class Cartlist extends StatefulWidget {
  Cartlist();

  @override
  State<Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<Cartlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 15, bottom: 10),
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                    " Cart"),
              ),
            ],
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: "homepage")),
                  );
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ))),
        body: Padding(
          padding: const EdgeInsets.only(left:10.0,right: 5,top:15),
          child: Consumer<ProdcutProvider>(
            
            builder: (context, cart,child) {
              return ListView.builder(
                  itemCount:cart.cartProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                          trailing:Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(cart.cartPriceList[index]
                                    .toString(),style: const TextStyle(
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 22),),
          
                                IconButton(onPressed: (){
          
                                  cart.removeItemFromList(context, index);
                                 
                                }, icon: const Icon(Icons.delete))
                              ],
                            ),
                          ) ,
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/ii.jpg'),
                              ),
                            ),
                            height: 60,
                            width: 70,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(cart.cartProduct[index]
                                .toString(),style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                          )),
                    );
                  });
            }
          ),
        ),
        
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Check Out",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
        ));
  }
}

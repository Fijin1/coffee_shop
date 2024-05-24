import 'package:coffee_shop/constant/colorconst.dart';
import 'package:coffee_shop/homescreen2.dart';
import 'package:coffee_shop/items_widget.dart';
import 'package:coffee_shop/main.dart';
import 'package:flutter/material.dart';

import 'home_bottom_bar.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(

      length: 5,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            leading:
            InkWell(
              onTap: () {

              },
              child: Icon(
                Icons.sort_rounded,
                color: Colors.grey,
                size: 35,
              ),
            ),
            actions: [
              InkWell(
                onTap: () {

                },
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ]


        ),


        body:
        Padding(
          padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
          child: Column(
            children: [
              Text("it's a Great Day For Coffee",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),

              ),
              SizedBox(height: 9,),
              Container(
                height: height * 0.05,
                width: width * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Find Your Coffee",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.grey,
                      )
                  ),

                ),
              ),

              SizedBox(height: 10),

              Container(
                width: width * 2,
                height: width * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.03),
                  color: Color(0xFF212325),
                ),
                child: TabBar(
                    labelColor: Colors.white,

                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(child: Text("Hot Coffee", style: TextStyle(
                          fontSize: width * 0.03),),),
                      Tab(child: Text("Cold Coffee", style: TextStyle(
                          fontSize: width * 0.03),),),
                      Tab(child: Text("Cappuiccino", style: TextStyle(
                          fontSize: width * 0.03),),),


                    ]),
              ),
              Expanded(
                  child: TabBarView(
                      children: [
                        items_widget(),
                        homescreen2(),
                        homescreen2(),
                      ]))
            ],
          ),
        ),
        bottomNavigationBar:  HomeBottomBar(),
      ),
    ),

    );

  }}
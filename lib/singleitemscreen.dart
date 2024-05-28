import 'package:coffee_shop/cart.dart';
import 'package:coffee_shop/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Singleitemscreen extends StatelessWidget {
  String img;
  Singleitemscreen(this.img);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(padding: EdgeInsets.only(top: 30,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);

                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),),
                SizedBox(height: 50),
                Center(
                  child: Image.asset("assets/images/$img.png",
                    width: w*0.8,

                  ),
                ),
                SizedBox(height: 50),
                Padding(padding: EdgeInsets.only(left: 25,right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEST COFFEE",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Colors.white,

                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: w*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              "\$ 30",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,

                              ),
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(""
                          "Coffee is a major source of antioxidants in the diet.it has many health benefits",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,

                        ),),
                      SizedBox(
                          height: 20),
                      Row(
                        children: [
                          Text("Volume:",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),),
                          SizedBox(width: 10),
                          Text("60 ml",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),)
                        ],
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: w*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 50, 54, 56),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));

                                },
                                child: Text("Add to Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Icon(
                                  Icons.favorite_outlined,color: Colors.white,
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),)
              ],
            ),),
        ),
      ),
    );
  }
}

import 'package:coffee_shop/constant/iconconst.dart';
import 'package:coffee_shop/constant/imageconst.dart';
import 'package:coffee_shop/main.dart';
import 'package:coffee_shop/success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant/colorconst.dart';

class checkOut extends StatefulWidget {
  const checkOut({super.key});

  @override
  State<checkOut> createState() => _checkOutState();
}

class _checkOutState extends State<checkOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        centerTitle: true,
        leading: Padding(
          padding:  EdgeInsets.all(w*0.05),
          child: InkWell(

              onTap: () {
                Navigator.pop(context);
              },

              child: SvgPicture.asset(iconconst.arrowback)),
        ),
        title:
        Text("Check out",style: GoogleFonts.merriweather(
          fontSize: w*0.045,
          fontWeight: FontWeight.w700,
          color: Colors.black,

        ),),
      ),
      body: Column(
        children: [Padding(
          padding:  EdgeInsets.all(w*0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Shipping Address",style: TextStyle(
                  color: Colors.grey,
                  fontSize: w*0.04
              ),),
              SvgPicture.asset(iconconst.editicon,
                width: w*0.04,
                color:Colors.white,)
            ],
          ),
        ),
          Container(
            height: h*0.18,
            width: w*0.9,
            color: Colors.brown,
            child: Padding(
              padding:  EdgeInsets.all(w*0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fijin",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: w*0.05

                  ),),
                  Divider(
                    color:Colors.grey.shade100,
                    height: w*0.1,
                  ),
                  Text("Manjeri Town,Malappuram,Kerala,676123",
                    style: TextStyle(
                        fontSize: w*0.035,
                        color: Colors.grey
                    ),)
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(w*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment",style: TextStyle(
                    color: Colors.grey,
                    fontSize: w*0.04
                ),),
                SvgPicture.asset(iconconst.editicon,
                  width: w*0.04,
                  color: Colors.white,)
              ],
            ),
          ),
          Container(
            height: h*0.08,
            width: w*0.9,
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(w*0.05),
                  child: Image.asset(imageconst.upi,
                  ),
                ),
                Text("fijinshifas1-2@oksbi "),


              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(w*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery method",style: TextStyle(
                    color: Colors.grey,
                    fontSize: w*0.04
                ),),
                SvgPicture.asset(iconconst.editicon,
                  width: w*0.04,
                  color: Colors.white,)
              ],
            ),
          ),
          Container(
            height: h*0.08,
            width: w*0.9,
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(w*0.05),
                  child: Image.asset(imageconst.deliveryboy),
                ),
                Text("Fast "),
                Text("(30-45 mints) ",),
              ],),),
          Container(
            margin: EdgeInsets.all(w*0.03),
            height: h*0.18,
            width: w*0.9,
            decoration: BoxDecoration(
              color:Colors.brown,

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:  EdgeInsets.all(w*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order:",style: TextStyle(
                          color: Colors.grey,
                          fontSize: w*0.045
                      ),),
                      Text("\$60.00",
                        style: TextStyle(
                            fontSize: w*0.045
                        ),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(w*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery:",style: TextStyle(
                          color: Colors.grey,
                          fontSize: w*0.045
                      ),),
                      Text("\$8.00",
                        style: TextStyle(
                            fontSize: w*0.045
                        ),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(w*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total:",style: TextStyle(
                          color: Colors.grey,
                          fontSize: w*0.045
                      ),),
                      Text("\$100.00",
                        style: TextStyle(
                            fontSize: w*0.045
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => Success(),));
            },
            child: Container(
              height: h*0.08,
              width: w*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*0.03),
                color:Colors.white,
              ),
              child: Center(
                child: Text("SUBMIT ORDER",
                  style: TextStyle(
                      color:Colors.black,
                      fontSize: w*0.05
                  ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}

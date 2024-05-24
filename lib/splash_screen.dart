import 'package:coffee_shop/constant/colorconst.dart';
import 'package:coffee_shop/constant/imageconst.dart';
import 'package:coffee_shop/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homescreen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 20,bottom: 0.01),
        decoration: const BoxDecoration(
          color: Colors.black,

          image: DecorationImage(image: AssetImage(imageconst.splashscreen),fit: BoxFit.cover)

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Coffee Shop",style: TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
            ),
            SizedBox(height: height*0.3),
            Column(
              children: [
                Text(
                  "feeling Low? Take a sip of coffee",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,

                  ),
                ),
                SizedBox(height: 80),
                InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen(),
                     ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colorconst.orange,
                      borderRadius: BorderRadius.circular(10),


                    ),
                    child: Text("Get Start ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width*0.04,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,

                      ),
                    ),
                  ),
                )
              ]
            )
          ],
        ),
      ),
      
    );
  }
}

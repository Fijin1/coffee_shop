import 'package:coffee_shop/main.dart';
import 'package:coffee_shop/singleitemscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class items_widget extends StatefulWidget {
  const items_widget({super.key});

  @override
  State<items_widget> createState() => _items_widgetState();
}

class _items_widgetState extends State<items_widget> {
  List img=[
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for (int i=0; i <  img.length;i++)

          Container(
            padding: EdgeInsets.symmetric(vertical: 7,horizontal: 1),
            margin: EdgeInsets.symmetric(vertical: 7,horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF212325),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Singleitemscreen(img[i])));

                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("assets/images/${img[i]}.png",
                      width: w*0.9,
                      height: h*0.11,
                      fit: BoxFit.fill,

                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        img[i],
                        style: TextStyle(
                          fontSize: w*0.04,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Best Coffee",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("\$30",style: TextStyle(
                        fontSize: 13,fontWeight: FontWeight.w500,
                        color: Colors.white,

                      ),),
                      Container(
                        padding:EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(CupertinoIcons.add,
                          size: 15,
                          color: Colors.white,),
                      )
                    ],
                  ),)
              ],
            ),
          )
      ],
    );
  }
}

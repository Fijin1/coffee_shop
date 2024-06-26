import 'package:flutter/material.dart';

class  HomeBottomBar extends StatelessWidget {
  const  HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 8,

          ),
        ],
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home,
          color: Colors.orange,
          size: 35,),
          Icon(Icons.favorite_outline,
            color: Colors.orange,
            size: 35,),
          Icon(Icons.notifications,
            color: Colors.orange,
            size: 35,),
          Icon(Icons.person,
            color: Colors.orange,
            size: 35,),
        ],
      ),

    );
  }
}

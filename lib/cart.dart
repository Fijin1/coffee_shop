import 'package:coffee_shop/constant/colorconst.dart';
import 'package:coffee_shop/constant/imageconst.dart';
import 'package:coffee_shop/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'checkOut.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconst.white,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.grey,
              )),
          title: Text(
            "My cart",
            style: GoogleFonts.merriweather(
              fontWeight: FontWeight.w700,
              fontSize: width * 0.05,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: Container(
          height: height * 0.2,
          width: width * 1,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your promo code",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: width * 0.05,
                            color: Colors.grey,
                          ),
                          constraints: BoxConstraints(
                            maxWidth: width * 0.6,
                            maxHeight: width * 0.1,
                          )),
                    ),
                    Container(
                      height: height * 0.055,
                      width: height * 0.13,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                    Text(
                      "\$ 30.00",
                      style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => checkOut(),
                        ));
                  },
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(
                      child: Text(
                        "Check Out",
                        style: TextStyle(
                          fontSize: width * 0.045,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(children: [
          // ref.watch(cartStreamProvider).when(
          // data:(data) {
          // return
          Expanded(
            child: ListView.separated(

              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  height: height * 0.2,
                  width: width * 1,
color: Colors.brown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Container(
                      // height: height*0.18,
                      // width: width*0.35,
                      // decoration: BoxDecoration(
                      // image:DecorationImage(image: NetworkImage(data[index].image.toString()),fit: BoxFit.fill) ,
                      // borderRadius: BorderRadius.circular(width*0.03)
                      // ),
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Text(data[index].name,
                          // style: TextStyle(
                          // fontWeight: FontWeight.w600,
                          // fontSize: width*0.05,
                          // color: Colors.grey,
                          // ),),
                          // Text("\$  ${data[index].price.toString()}",
                          // style: TextStyle(
                          // fontWeight: FontWeight.w700,
                          // fontSize: width*0.05,
                          // color: Colors.red
                          // ),),
                          Container(
                            height: height * 0.045,
                            width: width * 0.35,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    // cartItems[index]["qty"]++;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: height * 0.045,
                                    width: width * 0.1,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            width * 0.03)),
                                    child: Center(
                                        child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                                // Text(
                                // data[index].quantity.toString(),
                                // style: TextStyle(
                                // fontSize: width*0.045,
                                // fontWeight: FontWeight.w700,
                                // color: Colors.black
                                // ),),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: height * 0.045,
                                    width: width * 0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            width * 0.03)),
                                    child: Center(
                                        child: Icon(
                                      Icons.remove,
                                      color: Colorconst.primarycolor,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    content: Text(
                                        "Are you Sure You Want to remove this item ?"),
                                    actions: [
                                      // CupertinoActionSheetAction(
                                      // onPressed:  () {
                                      //
                                      // ref.watch(addingCartControllerProvider).deleteItemController(data[index].id);
                                      // Navigator.pop(context);
                                      // },
                                      // child: Text("Yes")),
                                      CupertinoActionSheetAction(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("No")),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.15,
                              color: Colors.white,
                              child: Padding(
                                  padding: EdgeInsets.all(width * 0.025),
                                  child: Icon(
                                    CupertinoIcons.arrow_up_bin,
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: height * 0.03,
                );
              },
              itemCount: 3,
            ),
          ),
        ]));
  }
}

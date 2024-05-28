import 'package:coffee_shop/constant/colorconst.dart';
import 'package:coffee_shop/constant/imageconst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../main.dart';
import '../condroller/user_condroller.dart';
import 'create_page.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GoogleAuth() {
    ref.read(usercontrollerprovider).googleFunction(context);
  }

  loginUser() {
    ref.watch(usercontrollerprovider).loginFun(emailController.text.trim(), passwordController.text.trim(), context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "COFFEE SHOP",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: w * 0.09,
                      color: Colorconst.white),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: w * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "Hello Again!",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colorconst.white,
                        fontSize: w * 0.07),
                  )),
                  Center(
                      child: Text(
                    "Welcome Back You’ve Been Missed!",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colorconst.white),
                  ))
                ],
              ),
            ),
            SizedBox(height: w*0.05,),
            Padding(
              padding:  EdgeInsets.only(left: w*0.12,
              top: w*0.1),
              child: Row(
                children: [
                  Text("Email Address",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: w*0.05),),
                ],
              ),
            ),
            SizedBox(height: w*0.02,),
            SizedBox(
              width: w * 0.8,
              child: TextFormField(
                  controller: emailController,
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                      fontSize: w * 0.04, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      filled: true,
                      labelText: "Please enter your name",
                      labelStyle: TextStyle(
                          fontSize: w * 0.04, fontWeight: FontWeight.w500),
                      // hintText: "Please enter your name",
                      // hintStyle: TextStyle(
                      //   fontSize: w * 0.015,
                      //   fontWeight: FontWeight.w500,
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(w * 0.05)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(w * 0.01)),
                      fillColor: Colors.white)),
            ),
            SizedBox(height: w*0.05,),
            Padding(
              padding:  EdgeInsets.only(left: w*0.12),
              child: Row(
                children: [
                  Text("password",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white,fontSize: w*0.05),),
                ],
              ),
            ),
            SizedBox(height: w*0.02,),
            Center(
              child: SizedBox(
                width: w * 0.8,
                child: TextFormField(
                    controller: passwordController,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                        fontSize: w * 0.04, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        labelText: "Please enter your password",
                        labelStyle: TextStyle(
                            fontSize: w * 0.04, fontWeight: FontWeight.w500),
                        // hintText: "Please enter your name",
                        // hintStyle: TextStyle(
                        //   fontSize: w * 0.015,
                        //   fontWeight: FontWeight.w500,
                        // ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(w * 0.06)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(w * 0.01)),
                        fillColor: Colors.white)),
              ),
            ),
            SizedBox(height: h*0.08,),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    loginUser();
                  },
                  child: Container(
                    height: h * 0.06,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(w * 0.06),

                    ),
                    child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),
                        )),
                  ),
                ),
                SizedBox(height: h*0.03,),
                InkWell(
                  onTap: () {
                    GoogleAuth();
                  },
                  child: Container(
                    height: h * 0.06,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(w * 0.06),

                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          SvgPicture.asset(imageconst.google),
                        SizedBox(width: w*0.03,),
                        Text(
                          "Sign in with google",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: h*0.05,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context) => CreatePage(google: false,),));
              },
              child: Container(
                height: h * 0.065,
                width: w * 0.93,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(w * 0.06)),
                child: Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        fontSize: w * 0.045,
                        fontWeight: FontWeight.w600,
                        color: Colors.redAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

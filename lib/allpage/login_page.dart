// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/funcsion/flutterToast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool viseblity = false;
  Icon eyeIcon = Icon(Icons.visibility_off_outlined);
  
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  _callGlavniy(){
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();
    if(username.isEmpty || password.isEmpty){
     Utils.firetoast("Malumotlarni to'ldiring");
    }else{

    }
  }
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.65,
                width: MediaQuery.of(context).size.width * 0.65,
                margin: EdgeInsets.only(bottom: 40),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login.png"),
                        fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Username",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5")),
                      )),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 7),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorHex.colorFromHex("#E0E0E0")),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none,
                          suffixIcon: SvgPicture.asset(
                            "assets/images/person1.svg",
                            height: 20,
                            width: 20,
                            fit: BoxFit.scaleDown,
                            color: ColorHex.colorFromHex("#8896A1"),
                          )),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Parol",
                        style:
                            TextStyle(color: ColorHex.colorFromHex("#2755A5")),
                      )),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 7),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorHex.colorFromHex("#E0E0E0")),
                        borderRadius: BorderRadius.circular(7)),
                    child: TextField(
                      controller: passwordController,
                      obscureText: viseblity,
                      decoration: InputDecoration(
                          hintText: "Parol",
                          hintStyle: TextStyle(fontSize: 14),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (viseblity) {
                                  setState(() {
                                    viseblity = false;
                                    eyeIcon = Icon(Icons.visibility_outlined);
                                  });
                                } else {
                                  setState(() {
                                    viseblity = true;
                                    eyeIcon =
                                        Icon(Icons.visibility_off_outlined);
                                  });
                                }
                              },
                              icon: eyeIcon,
                              color: ColorHex.colorFromHex("#8896A1"))),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              FlatButton(
                onPressed: (){
                  _callGlavniy();
                },
                minWidth: double.infinity,
                height: 50,
                 child:Text("Kirish",style: TextStyle(color: ColorHex.colorFromHex("#FFFFFF")),),
                 color: ColorHex.colorFromHex("#2755A5"),)
            ],
          ),
        ),
      ),
    );
  }
}
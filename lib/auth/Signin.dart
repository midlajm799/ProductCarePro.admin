import 'package:admin/homepage.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  FocusNode _passwordFocus = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void dispose() {
    _passwordController.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery
        .of(context)
        .size
        .height;
    final Width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Container(
        height: Height,
        width: Width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/white-texture.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            SizedBox(height: Height * 0.03,),
            Row(
              children: [
                SizedBox(width: Width * 0.01,),
                Text('ProductCarePro.\nAdmin', style: TextStyle(
                    fontSize: Height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700
                ),),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Width * 0.05, vertical: Height * 0.1),
                  width: Width * 0.35,
                  height: Height * 0.6,
                  decoration: BoxDecoration(
                    // color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(Height * 0.05),
                      border: Border.all()
                  ),
                  child: Container(
                    // color: Colors.blueAccent,
                    margin: EdgeInsets.symmetric(
                        horizontal: Width * 0.025, vertical: Height * 0.03),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Welcome back!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Height * 0.03
                              ),),

                          ],
                        ),
                        Row(
                          children: [Text(
                            'Enter your Credentials to access your account',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Height * 0.015

                            ),)
                          ],
                        ),
                        SizedBox(height: Height * 0.05,),
                        Row(
                          children: [
                            Text('Email address', style: TextStyle(
                                fontSize: Height * 0.02,
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: Height * 0.065,
                              width: Width * 0.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.black,
                                    hoverColor: Colors.black,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            Height * 0.02)
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Height * 0.02,),
                        Row(
                          children: [
                            Text('Password', style: TextStyle(
                                fontSize: Height * 0.02,
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: Height * 0.065,
                              width: Width * 0.2,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    focusColor: Colors.black,
                                    hoverColor: Colors.black,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            Height * 0.02)
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: Height * 0.04,),
                        SizedBox(
                          height: Height * 0.05,
                          width: Width * 0.3,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage()));
                            },
                            child: Text('Login', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Height * 0.02,
                              color: Colors.white,

                            ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffD166CA),
                              // Background color
                              foregroundColor: Colors.white,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Width * 0.005), // Rectangular border radius
                              ),
                            ),

                          ),

                        ),
                        TextButton(onPressed: () {},
                            child: Text('forgot password?', style: TextStyle(
                                color: Color(0xff102799)
                            ),))
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Width * 0.05, vertical: Height * 0.1),
                  width: Width * 0.4,
                  height: Height * 0.6,
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image:AssetImage('assets/signin.jpg'),
                  //         fit: BoxFit.fill
                  //     )
                  // ),
                  child: Image.asset('assets/admin login icn.png', width: Width * 0.3,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }}
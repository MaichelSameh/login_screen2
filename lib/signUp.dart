import 'package:flutter/material.dart';

import 'signIn.dart';
import 'size.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final Color headColor = Color.fromRGBO(0, 152, 153, 1);

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confermPasswordController = new TextEditingController();

  bool password = true;
  bool conferm = true;

  double labelFont = 20;
  @override
  Widget build(BuildContext context) {
    Size size = new Size(context);
    return Scaffold(
      body: Container(
        color: headColor,
        child: Column(
          children: [
            Container(
              height: size.screenHeight() / 4,
              width: size.screenWidth(),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(
                  bottom: size.height(40), left: size.width(10)),
              child: Text(
                "Register Now!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: size.font(30),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height(30)),
                    topRight: Radius.circular(size.height(30)),
                  ),
                ),
                padding: EdgeInsets.only(top: size.height(20)),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: size.font(labelFont),
                          color: Colors.black,
                        ),
                        hintText: "Your email",
                        hintStyle: TextStyle(color: Colors.black38),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: size.height(20)),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: size.font(labelFont),
                            color: Colors.black,
                          ),
                          hintText: "Your Password",
                          hintStyle: TextStyle(color: Colors.black38),
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(password
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () => setState(() {
                              password = !password;
                            }),
                          )),
                      obscureText: password,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: size.height(20)),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: "Conferm Pasword",
                          labelStyle: TextStyle(
                            fontSize: size.font(labelFont),
                            color: Colors.black,
                          ),
                          hintText: "Conferm Your Password",
                          hintStyle: TextStyle(color: Colors.black38),
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(conferm
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () => setState(() {
                              conferm = !conferm;
                            }),
                          )),
                      obscureText: conferm,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(height: size.height(40)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "By signing up you agree to our ",
                                style: TextStyle(
                                  fontSize: size.font(15),
                                ),
                              ),
                              InkWell(
                                child: Text(
                                  "Terms of Service",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                " and ",
                                style: TextStyle(
                                  fontSize: size.font(15),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            child: Text(
                              "Terms of Service",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height(40)),
                    GestureDetector(
                      onTap: () {
                        //Here you must type what will happen wen a user register
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            size.height(10),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [headColor.withOpacity(0.6), headColor],
                          ),
                        ),
                        height: size.height(50),
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width(30),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: size.font(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height(10)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            size.height(10),
                          ),
                          border: Border.all(
                            color: headColor,
                            width: size.width(2),
                          ),
                        ),
                        height: size.height(50),
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width(30),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: headColor,
                            fontWeight: FontWeight.bold,
                            fontSize: size.font(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

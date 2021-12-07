import 'package:flutter/material.dart';
import 'package:futurejob_bwa/Home_Page.dart';
import 'package:futurejob_bwa/Sign_Up.dart';
import 'package:futurejob_bwa/theme.dart';
import 'package:email_validator/email_validator.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: titleRegular.copyWith(
                  color: greyColor,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Build Your Career',
                style: titleSemiBold,
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/hero_sign-in.png',
                  width: 262,
                  height: 240,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: titleRegular.copyWith(
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      bool isValid = EmailValidator.validate(value);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: dummyWhite,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            color: isEmailValid ? purpleColor : redColor),
                      ),
                      hintText: "",
                    ),
                    style:
                        TextStyle(color: isEmailValid ? purpleColor : redColor),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: titleRegular.copyWith(
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      fillColor: dummyWhite,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: purpleColor),
                      ),
                      hintText: "",
                    ),
                    style: TextStyle(color: purpleColor),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 312,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: purpleColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      'Sign In',
                      style: textButton.copyWith(color: whiteColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Create New Account',
                      style: textButtonLight.copyWith(color: purpleColor),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

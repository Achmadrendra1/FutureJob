import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:futurejob_bwa/Home_Page.dart';
import 'package:futurejob_bwa/Sign_In.dart';
import 'package:futurejob_bwa/theme.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isEmailValid = true;
  bool isUploaded = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController goalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget uploadImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Container(
            height: 120,
            child: Image.asset('assets/upload_pic.png'),
          ),
        ),
      );
    }

    Widget showImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isUploaded = !isUploaded;
            });
          },
          child: Container(
            height: 120,
            child: Image.asset('assets/user_pic.png'),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: titleRegular.copyWith(
                color: greyColor,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Begin New Journey',
              style: titleSemiBold,
            ),
            SizedBox(
              height: 50,
            ),
            isUploaded ? showImages() : uploadImages(),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Name',
                  style: titleRegular.copyWith(
                    color: greyColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: nameController,
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
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                  keyboardType: TextInputType.emailAddress,
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
                ),
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
                  obscureText: true,
                  controller: passwordController,
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
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Goal',
                  style: titleRegular.copyWith(
                    color: greyColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: goalController,
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
                ),
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
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'Sign Up',
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
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'Back To Sign In',
                    style: textButtonLight.copyWith(color: purpleColor),
                  )),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}

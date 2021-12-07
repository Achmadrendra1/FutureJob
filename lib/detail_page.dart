import 'package:flutter/material.dart';
import 'package:futurejob_bwa/Home_Page.dart';
import 'package:futurejob_bwa/Sign_Up.dart';
import 'package:futurejob_bwa/list_detail.dart';
import 'package:futurejob_bwa/theme.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  Widget btnApply() {
    return Container(
      width: 200,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66))),
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        child: Text(
          'Apply For Job',
          style: textButton.copyWith(color: whiteColor),
        ),
      ),
    );
  }

  Widget btnCancel() {
    return Container(
      width: 200,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: redColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66))),
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        child: Text(
          'Cancel Apply',
          style: textButton.copyWith(color: whiteColor),
        ),
      ),
    );
  }

  Widget showMessage() {
    return Column(
      children: [
        Text(
          'You have applied this job and the \nrecruiter will contact you',
          style: subposted,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              isApplied ? showMessage() : Container(),
              Image.asset(
                'assets/google-icon.png',
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Front-End Developer',
                style: titleDetail,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Google, Inc • Jakarta',
                style: subposted,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the job',
                      style: textButton,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text: 'Full-Time On Site',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text: 'Start at Rp. 5.000.000 per month',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qualifications',
                      style: textButton,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text:
                          'Candidate must possess at least a\nBachelors Degree.',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text:
                          'Able to use Microsoft Office and Google\nbased service.',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text:
                          'Have an excellent time management,\ngood at organized and details',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Responsibilities',
                      style: textButton,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text:
                          'Initiate and promote any programs, events,\ntraining, or activities.',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailList(
                      text:
                          'Assessing and anticipating needs and\ncollaborate with Division.',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              isApplied ? btnCancel() : btnApply(),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  'Message Recruiter',
                  style: textButtonLight.copyWith(color: purpleColor),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

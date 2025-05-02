import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// without media query
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    //get size and height of screen
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0XFFFBF5F2),
      appBar: AppBar(backgroundColor: Color(0XFFFBF5F2)),
      body: Column(
        children: [
          Container(
            //title ofpage and it i style
            margin: EdgeInsets.only(bottom: 12), //margin in all edges
            alignment: Alignment.center, //Alignment elments to center
            width: widthScreen, //width of screen
            height: heightScreen * 0.049, //height of screen
            color: Colors.grey[300], //color it
            child: Text(
              "Profile", //title
              style: TextStyle(
                //stleing title
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 6), //  add spae
          Row(
            //row hace children
            children: [
              Flexible(
                //expanded as podsile
                child: Padding(
                  padding: EdgeInsets.only(
                    left: widthScreen * 0.02,
                  ), //padding elments
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //elment to left
                    children: [
                      Text(
                        //display text
                        "Nidhi Pandya",
                        style: TextStyle(
                          //dit size and width of text
                          fontSize: widthScreen * 0.04,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Nidhi12",
                        style: TextStyle(
                          fontSize: widthScreen * 0.03, // تقليل حجم الخط
                          fontWeight: FontWeight.w400,
                          color: Colors.black38,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.timer_sharp,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        title: Text(
                          "Joined March 2022",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                //displa iage
                child: Container(
                  margin: EdgeInsets.only(
                    right: widthScreen * 0.012,
                    left: widthScreen * 0.159,
                  ),
                  width:
                      widthScreen *
                      0.16, //iange width &height according to size of phone
                  height: widthScreen * 0.16,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    //make image circle
                    child: Image.asset("assets/images/6.jpg", fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          ),
          Container(
            //add spaces in top ad bottom
            width: widthScreen  ,
            height: heightScreen * 0.0025,
            margin: EdgeInsets.symmetric(vertical: 4),
            color: Colors.grey[400],
          ),
          SizedBox(height: 8),
          Container(
            //adjust  the conainer
            width: widthScreen * 0.90,
            height: heightScreen * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), //roun the border
              border: Border.all(
                color: Colors.grey.shade300,
                width: 3,
              ), //colorin border
            ),
            child: Row(
              //row
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  // dispaly title and icon
                  child: ListTile(
                    //dispaly iamge
                    leading: Image.asset(
                      "assets/images/21.png",
                      width: widthScreen * 0.098, //width & height iamge
                      height: heightScreen * 0.049,
                      fit: BoxFit.contain, //fit box of container
                    ),
                    title: Text(
                      "Friends updates",
                      style: TextStyle(
                        fontSize: widthScreen * 0.034,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios), //icon
                  ),
                ),
              ],
            ),
          ), //container
          Container(
            margin: EdgeInsets.all(widthScreen * 0.02), //margin
            child: Align(
              alignment: Alignment.centerLeft, //Alignment to center and Left
              child: Text(
                "Statistics",
                style: TextStyle(
                  fontSize: widthScreen * 0.044,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Row(
            children: [
              //row for display Statistics
              Container(
                //margin elments in left and right
                margin: EdgeInsets.only(
                  left: widthScreen * 0.02,
                  right: widthScreen * 0.02,
                ),
                width: widthScreen * 0.42,
                height: heightScreen * 0.070,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.fire,
                    color: Colors.amber.shade700,
                  ),
                  title: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 16, // تقليل حجم الخط
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Day Streak"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: widthScreen * 0.02,
                  right: widthScreen * 0.02,
                ),
                width: widthScreen * 0.42,
                height: heightScreen * 0.070,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.bolt,
                    color: Colors.amber.shade700,
                  ),
                  title: Text(
                    "1432",
                    style: TextStyle(
                      fontSize: 16, // تقليل حجم الخط
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Total XP"),
                ),
              ),
            ],
          ),
          SizedBox(height: 10), // تقليل المسافة
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: widthScreen * 0.02,
                  right: widthScreen * 0.02,
                ),
                width: widthScreen * 0.42,
                height: heightScreen * 0.069,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.fire,
                    color: Colors.amber.shade700,
                  ),
                  title: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 16, // تقليل حجم الخط
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Day Streak"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: widthScreen * 0.02,
                  right: widthScreen * 0.02,
                ),
                width: widthScreen * 0.42,
                height: heightScreen * 0.069,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.bolt,
                    color: Colors.amber.shade700,
                  ),
                  title: Text(
                    //dislay title
                    "1432",
                    style: TextStyle(
                      fontSize: widthScreen * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Total XP"),
                ),
              ),
            ],
          ),
          Row(
            //row
            children: [
              Container(
                margin: EdgeInsets.all(widthScreen * 0.02),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Friends",
                    style: TextStyle(
                      fontSize: widthScreen * 0.05,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 155), //space in row
              MaterialButton(
                // Button for add FRIENDS
                onPressed: () {},
                child: Text(
                  "ADD FRIENDS",
                  style: TextStyle(
                    color: Color(0XFF02A1FB),
                    fontSize: widthScreen * 0.04,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: widthScreen * 0.02),

                width: widthScreen * 0.9,
                height: heightScreen * 0.037,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(widthScreen * 0.04),
                    topRight: Radius.circular(widthScreen * 0.04),
                  ),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: widthScreen * 0.03,
                      ),
                      child: Text(
                        "FOLLOWING",
                        style: TextStyle(
                          fontSize: widthScreen * 0.035,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF02A1FB),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: widthScreen * 0.03,
                      ),
                      child: Text(
                        "FOLLOWERS",
                        style: TextStyle(
                          fontSize: widthScreen * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                //adjust the line on the of the box
                margin: EdgeInsets.only(left: widthScreen * 0.02),
                width: widthScreen * 0.45,
                height: heightScreen * 0.003,
                color: Color(0XFF02A1FB),
              ),
              Container(
                //margin: EdgeInsets.only(left: widthScreen * 0.02),
                width: widthScreen * 0.45,
                height: heightScreen * 0.003,
                color: const Color.fromARGB(255, 157, 155, 155),
              ),
            ],
          ),
          Container(
            //container for users
            margin: EdgeInsets.only(right: widthScreen * 0.06),
            width: widthScreen * 0.9,
            height: heightScreen * 0.064,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: ListTile(
              leading: Image.asset(
                "assets/images/22.png",
                width: widthScreen * .1,
                height: heightScreen * 0.1,
              ),
              title: Text(
                //dislay text
                "Hardi",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("4367 XP"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Container(
            //container for users
            margin: EdgeInsets.only(right: widthScreen * 0.06),
            width: widthScreen * 0.9,
            height: heightScreen * 0.064, //make the border in botom morerounded
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              border: Border.all(color: Colors.grey),
            ),
            child: ListTile(
              leading: Image.asset(
                "assets/images/23.png",
                width: widthScreen * .1,
                height: heightScreen * 0.1,
              ),
              title: Text(
                //dislay text
                "Krishna",
                style: TextStyle(
                  fontSize: widthScreen * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("4367 XP"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          SizedBox(height: heightScreen * 0.015),
          //display box contain an animle in left
          Container(
            margin: EdgeInsets.only(
              left: widthScreen * 0.02,
              right: widthScreen * 0.06,
            ),
            width: widthScreen * 0.9,
            height: heightScreen * 0.20,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 3),
              borderRadius: BorderRadius.circular(widthScreen * 0.04),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: heightScreen * 0.0105),
                      width: widthScreen * 0.375,
                      height: heightScreen * 0.09,
                      // color: Colors.amber,
                      child: Image.asset("assets/images/7.png"),
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Text(
                          "Invite your friends ",
                          style: TextStyle(
                            fontSize: widthScreen * 0.045,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Tell your friends it’s\nfree and fun to learn\non Mental up!",
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: widthScreen * 0.025,
                    left: widthScreen * 0.025,
                    right: widthScreen * 0.025,
                  ),
                  width: widthScreen * 0.925,
                  height: heightScreen * 0.069,
                  decoration: BoxDecoration(
                    color: Color(0XFF02A1FB),
                    borderRadius: BorderRadius.circular(widthScreen*0.04),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "INVITE FRIENDS",
                      style: TextStyle(fontSize: widthScreen * 0.045, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

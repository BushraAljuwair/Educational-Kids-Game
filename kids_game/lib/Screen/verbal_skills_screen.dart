import 'package:flutter/material.dart';

class VerbalSkillsScreen extends StatefulWidget {
  const VerbalSkillsScreen({super.key});

  @override
  State<VerbalSkillsScreen> createState() => _VerbalSkillsScreenState();
}

class _VerbalSkillsScreenState extends State<VerbalSkillsScreen> {
  @override
  Widget build(BuildContext context) {
    //take  height&  width of phone
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0XFFFBF5F2),

      appBar: AppBar(backgroundColor: Color(0XFFFBF5F2)),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                //row have Container for image
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.07),
                    width: screenWidth,
                    height: screenHeight * 0.06,
                    child: Image.asset(
                      "assets/images/19.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Stack(
                // This Stack overlays multiple elements to create a layered design with a background, overlapping cards, and text.
                clipBehavior: Clip.none, //dot cut image
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      //margin ofContainer
                      left: screenWidth * 0.046,
                    ), // 20 / screenWidth
                    width: screenWidth * 0.488, // 210 / screenWidth
                    height: screenHeight * 0.172, // 140 / screenHeight
                    decoration: BoxDecoration(
                      // visullzation  of Container
                      color: Color(0XFFE9E8E8), // color for Container
                      borderRadius: BorderRadius.circular(
                        24,
                      ), //rounded the border
                      border: Border.all(
                        color: const Color.fromARGB(
                          255,
                          191,
                          179,
                          179,
                        ), //Border color & width
                        width: 3.5,
                      ),
                    ),
                  ),
                  Positioned(
                    //childe of stake that hve spisfc loation on screen
                    left: screenWidth * 0.009, // 4 / left screenWidth
                    top: screenHeight * -0.057, // -47 /top screenHeight
                    width: screenWidth * 0.581, // 250 /width  screenWidth
                    height: screenHeight * 0.123, // 100 / screenHeight
                    child: Image.asset("assets/images/2.png"), // image
                  ),
                  Positioned(
                    //spacfy the 2 chiled displayimage on stack
                    left: screenWidth * 0.104, // 45 / screenWidth
                    bottom: screenHeight * -0.025, // -20 / screenHeight
                    width: screenWidth * 0.302, // 130 / screenWidth
                    height: screenHeight * 0.123, // 100 / screenHeight
                    child: Image.asset("assets/images/17.png"),
                  ),
                  Positioned(
                    left: screenWidth * 0.417, // 180 / screenWidth
                    bottom: screenHeight * -0.08, // -65 / screenHeight
                    width: screenWidth * 0.325, // 140 / screenWidth
                    height: screenHeight * 0.123, // 100 / screenHeight
                    child: Text(
                      "3/40", //display text and styling it
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: screenWidth * 0.037,
                      ),
                    ), // Responsive font size
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.019,
              ), // add space bettwen elments
              //pen
              SizedBox(
                width: screenWidth * 0.232, // 100 / screenWidth
                height: screenWidth * 0.232, // 100 / screenWidth (for circle)
                child: InkWell(
                  // when user press container it wll go to the sceond page if exit
                  onTap: () {},
                  child: Container(
                    //container for image specify i visualize and coloring it , round the border
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 191, 179, 179),
                        width: screenWidth * 0.014, // 6 / screenWidth
                      ),
                    ),
                    child: Container(
                      //childe  of  prev Container
                      margin: EdgeInsets.all(
                        screenWidth * 0.009,
                      ), //  set margin
                      width: screenWidth * 0.209, // set width
                      height: screenWidth * 0.209, // set height
                      decoration: BoxDecoration(
                        color: Color(0XFF72BFC7), //color it
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        // chiled of container for dispaly imahes
                        clipBehavior:
                            Clip.none, //dont cut imae if go out border
                        children: [
                          Positioned(
                            //childe 1 disply image with spisfic width and height
                            left: screenWidth * 0.151, // 65 / screenWidth
                            top: screenWidth * 0.097, // 42 / screenWidth
                            child: Image.asset(
                              "assets/images/20.png",
                              width: screenWidth * 0.07,
                              height: screenWidth * 0.07,
                            ), // 30 / screenWidth, 30 / screenWidth
                          ),
                          Positioned(
                            //second child put on container
                            left: screenWidth * 0.046, // 20 / screenWidth
                            top: screenWidth * 0.041, // 18 / screenWidth
                            child: Image.asset(
                              //image to display
                              "assets/images/3.png",
                              width: screenWidth * 0.104,
                              height: screenWidth * 0.104,
                            ), // 45 / screenWidth, 45 / screenWidth
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //end pen
              Text(
                "Intro", //text under image
                style: TextStyle(
                  fontSize: screenWidth * 0.037,
                  fontWeight: FontWeight.bold,
                ),
              ), // 16 / screenWidth
              // row
              //start of row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.232, // 100 / screenWidth
                    height: screenWidth * 0.232, // 100 / screenWidth
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromARGB(255, 191, 179, 179),
                          width: screenWidth * 0.014, // 6 / screenWidth
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(
                          screenWidth * 0.009,
                        ), // 4 / screenWidth
                        width: screenWidth * 0.209, // 90 / screenWidth
                        height: screenWidth * 0.209, // 90 / screenWidth
                        decoration: BoxDecoration(
                          color: Color(0XFF72BFC7),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: screenWidth * 0.151, // 65 / screenWidth
                              top: screenWidth * 0.097, // 42 / screenWidth
                              child: Image.asset(
                                "assets/images/20.png",
                                width: screenWidth * 0.07,
                                height: screenWidth * 0.07,
                              ), // 30 / screenWidth, 30 / screenWidth
                            ),
                            Positioned(
                              left: screenWidth * 0.046, // 20 / screenWidth
                              top: screenWidth * 0.041, // 18 / screenWidth
                              child: Image.asset(
                                "assets/images/4.png",
                                width: screenWidth * 0.104,
                                height: screenWidth * 0.104,
                              ), // 45 / screenWidth, 45 / screenWidth
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.037), // 16 / screenWidth
                  SizedBox(
                    width: screenWidth * 0.232, // 100 / screenWidth
                    height: screenWidth * 0.232, // 100 / screenWidth
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 191, 179, 179),
                            width: screenWidth * 0.014, // 6 / screenWidth
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(
                            screenWidth * 0.009,
                          ), // 4 / screenWidth
                          width: screenWidth * 0.209, // 90 / screenWidth
                          height: screenWidth * 0.209, // 90 / screenWidth
                          decoration: BoxDecoration(
                            color: Color(0XFF72BFC7),
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: screenWidth * 0.151, // 65 / screenWidth
                                top: screenWidth * 0.097, // 42 / screenWidth
                                child: Image.asset(
                                  "assets/images/20.png",
                                  width: screenWidth * 0.07,
                                  height: screenWidth * 0.07,
                                ), // 30 / screenWidth, 30 / screenWidth
                              ),
                              Positioned(
                                left: screenWidth * 0.046, // 20 / screenWidth
                                top: screenWidth * 0.041, // 18 / screenWidth
                                child: Image.asset(
                                  "assets/images/5.png",
                                  width: screenWidth * 0.104,
                                  height: screenWidth * 0.104,
                                ), // 45 / screenWidth, 45 / screenWidth
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //end of the row
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: screenWidth * 0.267,
                      right: screenWidth * 0.069,
                    ), // 115 / screenWidth, 30 / screenWidth
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Phrases\t\t\t",
                      style: TextStyle(
                        fontSize: screenWidth * 0.037,
                        fontWeight: FontWeight.bold,
                      ), // 16 / screenWidth
                    ),
                  ),
                  Text(
                    "\t\t\tTravel",
                    style: TextStyle(
                      fontSize: screenWidth * 0.037,
                      fontWeight: FontWeight.bold,
                    ), // 16 / screenWidth
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.232, // 100 / screenWidth
                height: screenWidth * 0.232, // 100 / screenWidth
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color.fromARGB(255, 191, 179, 179),
                      width: screenWidth * 0.014, // 6 / screenWidth
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(
                      screenWidth * 0.009,
                    ), // 4 / screenWidth
                    width: screenWidth * 0.209, // 90 / screenWidth
                    height: screenWidth * 0.209, // 90 / screenWidth
                    decoration: BoxDecoration(
                      color: Color(0XFF72BFC7),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: screenWidth * 0.151, // 65 / screenWidth
                          top: screenWidth * 0.097, // 42 / screenWidth
                          child: Image.asset(
                            "assets/images/20.png",
                            width: screenWidth * 0.07,
                            height: screenWidth * 0.07,
                          ), // 30 / screenWidth, 30 / screenWidth
                        ),
                        Positioned(
                          left: screenWidth * 0.050, // 15 / screenWidth
                          top: screenWidth * 0.049, // 12 / screenWidth
                          child: Icon(
                            Icons.lock,
                            color: Colors.grey.shade800,
                            size:
                                screenWidth *
                                0.090, // This was likely a fixed value, adjusting based on a proportion
                            weight: 500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.232, // 100 / screenWidth
                    height: screenWidth * 0.232, // 100 / screenWidth
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromARGB(255, 191, 179, 179),
                          width: screenWidth * 0.014, // 6 / screenWidth
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(
                          screenWidth * 0.009,
                        ), // 4 / screenWidth
                        width: screenWidth * 0.209, // 90 / screenWidth
                        height: screenWidth * 0.209, // 90 / screenWidth
                        decoration: BoxDecoration(
                          color: Color(0XFF72BFC7),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: screenWidth * 0.151, // 65 / screenWidth
                              top: screenWidth * 0.097, // 42 / screenWidth
                              child: Image.asset(
                                "assets/images/20.png",
                                width: screenWidth * 0.07,
                                height: screenWidth * 0.07,
                              ), // 30 / screenWidth, 30 / screenWidth
                            ),
                            Positioned(
                              left: screenWidth * 0.050, // 15 / screenWidth
                              top: screenWidth * 0.049, // 12 / screenWidth
                              child: Icon(
                                Icons.lock,
                                color: Colors.grey.shade800,
                                size:
                                    screenWidth *
                                    0.090, // This was likely a fixed value, adjusting based on a proportion
                                weight: 500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.037), // 16 / screenWidth
                  SizedBox(
                    width: screenWidth * 0.232, // 100 / screenWidth
                    height: screenWidth * 0.232, // 100 / screenWidth
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color.fromARGB(255, 191, 179, 179),
                          width: screenWidth * 0.014, // 6 / screenWidth
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(
                          screenWidth * 0.009,
                        ), // 4 / screenWidth
                        width: screenWidth * 0.209, // 90 / screenWidth
                        height: screenWidth * 0.209, // 90 / screenWidth
                        decoration: BoxDecoration(
                          color: Color(0XFF72BFC7),
                          shape: BoxShape.circle,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: screenWidth * 0.151, // 65 / screenWidth
                              top: screenWidth * 0.097, // 42 / screenWidth
                              child: Image.asset(
                                "assets/images/20.png",
                                width: screenWidth * 0.07,
                                height: screenWidth * 0.07,
                              ), // 30 / screenWidth, 30 / screenWidth
                            ),
                            Positioned(
                              left: screenWidth * 0.050, // 15 / screenWidth
                              top: screenWidth * 0.049, // 12 / screenWidth
                              child: Icon(
                                Icons.lock,
                                color: Colors.grey.shade800,
                                size:
                                    screenWidth *
                                    0.090, // This was likely a fixed value, adjusting based on a proportion
                                weight: 500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

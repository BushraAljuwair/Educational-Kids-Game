import 'package:flutter/material.dart';
import 'package:kids_game/Screen/verbal_skills_screen.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreen();
}

class _LessonsScreen extends State<LessonsScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen width for responsive layout.
    final screenWidth = MediaQuery.of(context).size.width;
    // Get the screen height for responsive layout.
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(
        0XFFFBF5F2,
      ), // Sets the background color of the Scaffold.
      appBar: AppBar(
        backgroundColor: Color(0XFFFBF5F2), // Creates an AppBar (the top bar).
      ), //backgroundColor for appbar
      body: SingleChildScrollView(
        // Important to make the content scrollable if it exceeds the screen size.
        child: Column(
          children: [
            Row(
              // Row containing the top banner image.
              children: [
                Container(
                  // Container for the app logo image, sized responsively based on screen dimensions.
                  margin: EdgeInsets.only(bottom: screenHeight * 0.03),
                  width: screenWidth,
                  height: screenHeight * 0.06,
                  child: Image.asset("assets/images/18.png", fit: BoxFit.fill),
                ),
              ],
            ),
            Row(
              // Row for the "Logical reasoning" section.
              children: [
                Container(
                  //Container that spasifay the directions
                  // Container for the app logo image, sized responsively based on screen dimensions.
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.04,
                    right: screenWidth * 0.035,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Logical reasoning",
                    style: TextStyle(fontSize: screenWidth * 0.07),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  // Container for the progress indicator image.
                  width:
                      screenWidth *
                      0.05, // Sets the width to be the full screen width.

                  height:
                      screenWidth *
                      0.05, // Sets the height relative to the screen height.
                  child: Image.asset(
                    "assets/images/12.png",
                  ), // Displays an image from the assets folder, stretching it to fill the container.
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                ), // SizedBox for some spacing.
                Text(
                  "18/40",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              // Arranges its children in a horizontal line.
              children: [
                InkWell(
                  onTap: () {
                    // when press go VerbalSkillsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return VerbalSkillsScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    // A general-purpose container widget.
                    margin: EdgeInsets.only(
                      // Sets margins.
                      left:
                          screenWidth *
                          0.04, // Left margin relative to screen width.
                      top:
                          screenHeight *
                          0.02, // Top margin relative to screen height.
                    ),
                    width:
                        screenWidth *
                        0.37, // Sets the width & height relative to the screen width.
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        227,
                        226,
                        226,
                      ), // Sets the background color.
                      borderRadius: BorderRadius.circular(
                        16,
                      ), // Rounds the corners.
                    ),
                    child: Stack(
                      // Positions its children relative to the edges of the container.
                      children: [
                        Positioned(
                          // Positions its child within the Stack.
                          top:
                              screenHeight *
                              0.01, // Positions from the top relative to screen height.
                          left:
                              screenWidth *
                              0.11, // Positions from the left relative to screen width.
                          child: Text(
                            "unit 1", // Displays text and style
                            style: TextStyle(fontSize: screenWidth * 0.06),
                          ),
                        ),
                        Positioned(
                          // Positions its child within the Stack.
                          bottom:
                              -screenHeight *
                              0.04, // Positions from the bottom (negative value moves it upwards) relative to screen height.
                          left:
                              screenWidth *
                              0.015, // Positions from the left relative to screen width.
                          child: Container(
                            margin: EdgeInsets.all(
                              screenWidth * 0.02,
                            ), // Sets all margins relative to screen width.
                            width:
                                screenWidth *
                                0.27, // Sets the width & height  relative to screen width.
                            height: screenHeight * 0.12,
                            child: Image.asset("assets/images/15.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ), // Creates empty space with width relative to screen width.
                Container(
                  // A general-purpose container widget.
                  margin: EdgeInsets.only(
                    left:
                        screenWidth *
                        0.04, // Left  & top margin relative to screen width.
                    top: screenHeight * 0.02,
                  ),
                  width:
                      screenWidth *
                      0.37, // Sets the width  & height relative to the screen width.
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    // Defines the visual appearance of the container.
                    color: Color.fromARGB(
                      255,
                      227,
                      226,
                      226,
                    ), // Sets the background color.
                    borderRadius: BorderRadius.circular(
                      16,
                    ), // Rounds the corners.
                  ),
                  child: Stack(
                    // Positions its children relative to the edges of the container.
                    children: [
                      Positioned(
                        // Positions its child within the Stack.
                        top:
                            screenHeight *
                            0.05, // Positions from the top relative to screen height.
                        right:
                            screenWidth *
                            0.1, // Positions from the right relative to screen width.
                        child: Icon(
                          // Displays an icon.
                          Icons.lock,
                          size:
                              screenWidth *
                              0.17, // Sets the icon size relative to screen width.
                          color: Colors.grey[800], // Sets the icon color.
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              // Arranges its children in a horizontal line.
              children: [
                Container(
                  // Arranges its children in a horizontal line.
                  margin: EdgeInsets.only(
                    // Sets margins.
                    left: screenWidth * 0.04,
                    right: screenWidth * 0.07,
                  ),
                  alignment:
                      Alignment
                          .topLeft, // Aligns the child to the top-left of the container.
                  child: Text(
                    "Artistic thinking",
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                    ), // Sets the font size relative to screen width.
                    textAlign: TextAlign.start, //Alignment text
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.015,
                ), // Creates empty space with width relative to screen width.
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.01),
                  width:
                      screenWidth *
                      0.05, // Sets the width  & heightrelative to the screen width.
                  height: screenWidth * 0.05,
                  child: Image.asset("assets/images/12.png"),
                ), //display iage
                SizedBox(width: screenWidth * 0.01), //space in elments
                Text(
                  "35/40", //display text and it is appernce
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              // Arranges its children in a horizontal line.
              children: [
                InkWell(
                  onTap: () {
                    // when press go VerbalSkillsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return VerbalSkillsScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left:
                          screenWidth *
                          0.04, // Left margin relative to screen width.
                      top:
                          screenHeight *
                          0.02, // Top margin relative to screen height.
                    ),
                    width:
                        screenWidth *
                        0.37, // Sets the width   height relative to the screen width.
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      // Defines the visual appearance of the container.
                      color: Color.fromARGB(255, 227, 226, 226),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      // make Stack tp put childe inside
                      children: [
                        Positioned(
                          top:
                              screenHeight *
                              0.01, // Left margin relative to screen width.
                          left:
                              screenWidth *
                              0.11, // Top margin relative to screen height.
                          child: Text(
                            //display text and its style
                            "unit 1",
                            style: TextStyle(fontSize: screenWidth * 0.06),
                          ),
                        ),
                        Positioned(
                          //child of stack that put in specific location in screen
                          bottom: -screenHeight * 0.04,
                          left: screenWidth * 0.015,
                          child: Container(
                            margin: EdgeInsets.all(screenWidth * 0.02),
                            width: screenWidth * 0.29,
                            height: screenHeight * 0.12,
                            child: Image.asset("assets/images/16.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04), //space between elements
                Container(
                  //container specific size that fit screen  that have a hild Stack
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.04,
                    top: screenHeight * 0.02,
                  ),
                  width: screenWidth * 0.37,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 227, 226, 226),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    //Stack have childern to display in spsfic manner
                    children: [
                      Positioned(
                        top: screenHeight * 0.05,
                        right: screenWidth * 0.1,
                        child: Icon(
                          Icons.lock,
                          size: screenWidth * 0.17,
                          color: Colors.grey[800],
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
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.04,
                    right: screenWidth * 0.035,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Verbal skills",
                    style: TextStyle(fontSize: screenWidth * 0.07),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(width: screenWidth * 0.015),
                Container(
                  margin: EdgeInsets.only(
                    top: screenHeight * 0.01,
                    left: screenWidth * 0.16,
                  ),
                  width: screenWidth * 0.05,
                  height: screenWidth * 0.05,
                  child: Image.asset("assets/images/12.png"),
                ),
                SizedBox(width: screenWidth * 0.01),
                Text(
                  "13/40",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    // when press go VerbalSkillsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return VerbalSkillsScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: screenWidth * 0.04,
                      top: screenHeight * 0.015,
                    ),
                    width: screenWidth * 0.37,
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 227, 226, 226),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: screenHeight * 0.01,
                          left: screenWidth * 0.11,
                          child: Text(
                            "unit 1",
                            style: TextStyle(fontSize: screenWidth * 0.06),
                          ),
                        ),
                        Positioned(
                          bottom: -screenHeight * 0.04,
                          left: screenWidth * 0.015,
                          child: Container(
                            margin: EdgeInsets.all(screenWidth * 0.02),
                            width: screenWidth * 0.29,
                            height: screenHeight * 0.12,
                            child: Image.asset("assets/images/17.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth * 0.04,
                    top: screenHeight * 0.015,
                  ),
                  width: screenWidth * 0.37,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 227, 226, 226),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: screenHeight * 0.05,
                        right: screenWidth * 0.1,
                        child: Icon(
                          Icons.lock,
                          size: screenWidth * 0.17,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

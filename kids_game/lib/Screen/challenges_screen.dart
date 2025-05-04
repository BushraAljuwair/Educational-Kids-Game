import 'package:flutter/material.dart';

/// A responsive widget demonstrating how to use MediaQuery for adaptive layouts
class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0XFFFBF5F2), //backgroundColor
      appBar: AppBar(backgroundColor: Color(0XFFFBF5F2)),
      body: ListView(
        children: [
          //title
          Container(
            margin: EdgeInsets.only(
              bottom: screenHeight * 0.03,
            ), // Make bottom margin responsive
            alignment: Alignment.center,
            width:
                screenWidth, // Make width responsive to occupy the full screen width
            height: screenHeight * 0.06, // Make height responsive
            color: const Color.fromARGB(255, 225, 222, 222),
            child: Text(
              "Challenges",
              style: TextStyle(
                fontSize: screenWidth * 0.07,
                fontWeight: FontWeight.w400,
              ), // Make font size responsive
            ),
          ),
          // Main card container with challenge information
          Container(
            // Responsive margin: 5% of screen width (~20 on 400px screen)
            margin: EdgeInsets.all(screenWidth * 0.05),
            // Responsive dimensions: 80% of screen width and 14% of screen height
            width: screenWidth * 0.8,
            height: screenHeight * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                // Challenge image positioned at top-left
                Positioned(
                  // Small padding from top and left (0.5% of respective dimensions)
                  top: screenHeight * 0.005,
                  left: screenWidth * 0.005,

                  // Image width: 32.5% of screen width
                  width: screenWidth * 0.32,

                  child: Image.asset(
                    "assets/images/8.png",
                    // Image height: 13.5% of screen height
                    height: screenHeight * 0.115,
                    fit: BoxFit.fill,
                  ),
                ),

                // Challenge title text positioned to the right of the image
                Positioned(
                  // 40% from left of screen
                  left: screenWidth * 0.4,
                  child: Text(
                    "Complete 1000 word \nstreak",
                    style: TextStyle(
                      // Responsive font size: 4.5% of screen width
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Challenge subtitle positioned below the title
                Positioned(
                  // Same horizontal position as title
                  left: screenWidth * 0.4,
                  // 7.5% from top of container
                  top: screenHeight * 0.075,
                  child: Text(//displat title 
                    "Win 1000XP along with 300 \ndiamonds.",
                    style: TextStyle(
                      // Responsive font size: 3.5% of screen width
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(-0.8, -0.5),
            child: Text(
              "Achievements",//title
              style: TextStyle(
                fontSize: screenWidth * 0.07,
                fontWeight: FontWeight.w500,
              ), // Make font size responsive
            ),
          ),
          Container(
            // Responsive margin: 5% of screen width (~20 on 400px screen)
            margin: EdgeInsets.all(screenWidth * 0.05),
            // Responsive dimensions: 80% of screen width and 14% of screen height
            width: screenWidth * 0.8,
            height: screenHeight * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                // Challenge image positioned at top-left
                Positioned(
                  // Small padding from top and left (0.5% of respective dimensions)
                  top: screenHeight * 0.005,
                  left: screenWidth * 0.005,

                  // Image width: 32.5% of screen width
                  width: screenWidth * 0.32,

                  child: Image.asset(
                    "assets/images/9.png",
                    // Image height: 13.5% of screen height
                    height: screenHeight * 0.115,
                    fit: BoxFit.contain,
                  ),
                ),
                // Challenge title text positioned to the right of the image
                Positioned(
                  // 40% from left of screen
                   left: screenWidth * 0.35,
                 
                  child: Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      // Responsive font size: 4.5% of screen width
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Challenge subtitle positioned below the title
                Positioned(
                  // Same horizontal position as title
                  left: screenWidth * 0.35,
                  // 7.5% from top of container
                  top: screenHeight * 0.04,
                  child: Text(
                    " is simply dummy text of\nthe printing and typesetting\nindustry.",
                    style: TextStyle(
                      // Responsive font size: 3.5% of screen width
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ),
              ],
            ),
          ),
           Container(
            // Responsive margin: 5% of screen width (~20 on 400px screen)
            margin: EdgeInsets.all(screenWidth * 0.05),
            // Responsive dimensions: 80% of screen width and 14% of screen height
            width: screenWidth * 0.8,
            height: screenHeight * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                // Challenge image positioned at top-left
                Positioned(
                  // Small padding from top and left (0.5% of respective dimensions)
                  top: screenHeight * 0.005,
                  left: screenWidth * 0.005,

                  // Image width: 32.5% of screen width
                  width: screenWidth * 0.32,

                  child: Image.asset(
                    "assets/images/10.png",
                    // Image height: 13.5% of screen height
                    height: screenHeight * 0.115,
                    fit: BoxFit.contain,
                  ),
                ),
                // Challenge title text positioned to the right of the image
                Positioned(
                  // 40% from left of screen
                   left: screenWidth * 0.35,
                 
                  child: Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      // Responsive font size: 4.5% of screen width
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Challenge subtitle positioned below the title
                Positioned(
                  // Same horizontal position as title
                  left: screenWidth * 0.35,
                  // 7.5% from top of container
                  top: screenHeight * 0.04,
                  child: Text(
                    " is simply dummy text of\nthe printing and typesetting\nindustry.",
                    style: TextStyle(
                      // Responsive font size: 3.5% of screen width
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ),
                
              ],
            ),
            
          ),
           Container(
            // Responsive margin: 5% of screen width (~20 on 400px screen)
            margin: EdgeInsets.all(screenWidth * 0.05),
            // Responsive dimensions: 80% of screen width and 14% of screen height
            width: screenWidth * 0.8,
            height: screenHeight * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                // Challenge image positioned at top-left
                Positioned(
                  // Small padding from top and left (0.5% of respective dimensions)
                  top: screenHeight * 0.005,
                  left: screenWidth * 0.005,

                  // Image width: 32.5% of screen width
                  width: screenWidth * 0.32,

                  child: Image.asset(
                    "assets/images/11.png",
                    // Image height: 13.5% of screen height
                    height: screenHeight * 0.111,
                    fit: BoxFit.contain,
                  ),
                ),
                // Challenge title text positioned to the right of the image
                Positioned(
                  // 40% from left of screen
                   left: screenWidth * 0.35,
                 
                  child: Text(
                    "Lorem Ipsum",
                    style: TextStyle(
                      // Responsive font size: 4.5% of screen width
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Challenge subtitle positioned below the title
                Positioned(
                  // Same horizontal position as title
                  left: screenWidth * 0.35,
                  // 7.5% from top of container
                  top: screenHeight * 0.04,
                  child: Text(
                    " is simply dummy text of\nthe printing and typesetting\nindustry.",
                    style: TextStyle(
                      // Responsive font size: 3.5% of screen width
                      fontSize: screenWidth * 0.035,
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


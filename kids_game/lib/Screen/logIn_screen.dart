import 'package:flutter/material.dart';
import 'package:kids_game/Screen/home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    // Controllers for the text fields to manage user input.
    final userNameTextEditingController = TextEditingController();
    final userPasswordTextEditingController = TextEditingController();

    // Get the screen size to make the layout responsive using MediaQuery.
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0XFFFBF5F2),
      appBar: AppBar(backgroundColor: const Color(0XFFFBF5F2)),
      body: Column(
        children: [
          // Container for the app logo image, sized responsively.
          Container(
            width: screenSize.width * 0.8, // 80% of the screen width.
            height: screenSize.height * 0.2, // 20% of the screen height.
            child: Image.asset("assets/images/0.png", fit: BoxFit.fill),
          ),

          // Container for the username text field with responsive margins.
          Container(
            margin: EdgeInsets.only(
                left: screenSize.width * 0.078, // 30 / screenWidth
                right: screenSize.width * 0.078, // 30 / screenWidth
                bottom: screenSize.height * 0.024), // 20 / screenHeight
            child: TextField(
              controller: userNameTextEditingController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0XFFFFFFFF),
                hintText: "  User name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.024, // 20 / screenHeight
                  horizontal: screenSize.width * 0.039, // 15 / screenWidth
                ),
              ),
            ),
          ),

          // Container for the password text field with responsive margins.
          Container(
            margin: EdgeInsets.only(
                left: screenSize.width * 0.078, // 30 / screenWidth
                right: screenSize.width * 0.078, // 30 / screenWidth
                bottom: screenSize.height * 0.019), // 16 / screenHeight
            child: TextField(
              controller: userPasswordTextEditingController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0XFFFFFFFF),
                hintText: "  password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(26),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: screenSize.height * 0.024, // 20 / screenHeight
                  horizontal: screenSize.width * 0.039, // 15 / screenWidth
                ),
              ),
            ),
          ),

          // Align widget to position the "Forgot Password?" text responsively.
          Align(
            alignment: Alignment(0.7, .5),
            child: Text(
              "Forgot Password?",
              style: TextStyle(fontSize: screenSize.width * 0.047, // 18 / screenWidth
                  fontWeight: FontWeight.bold),
            ),
          ),

          // Container for the "Go" button with responsive margins, width, and height.
          Container(
            margin: EdgeInsets.only(
                top: screenSize.height * 0.018, // 15 / screenHeight
                bottom: screenSize.height * 0.03), // 25 / screenHeight
            width: screenSize.width * 0.9,
            height: screenSize.height * 0.079, // 65 / screenHeight
            decoration: BoxDecoration(
              color: const Color(0XFFEB9F4A),
              borderRadius: BorderRadius.circular(30),
            ),
            child: MaterialButton(
              onPressed: () {
                // Navigate to the HomeScreen when the button is pressed, replacing the current route.
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              },
              child: Text(
                "Go",
                style: TextStyle(color: Colors.white, fontSize: screenSize.width * 0.078), // 30 / screenWidth
              ),
            ),
          ),

          // RichText widget for the "Don't have an account?" and "Sign Up" text with responsive font size.
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Don’t have account yet? ",
                  style: TextStyle(
                    fontSize: screenSize.width * 0.052, // 20 / screenWidth
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(
                  text: "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF77B29F),
                  ),
                ),
              ],
            ),
          ),

          // Expanded widget to take up remaining vertical space for the background image, sized responsively.
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: screenSize.height * 0.016, left: 0), // 13 / screenHeight
              width: screenSize.width * .87,
              height: screenSize.height * .8,
              alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/1.png", fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
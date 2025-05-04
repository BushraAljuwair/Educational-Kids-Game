import 'package:flutter/material.dart';
import 'package:kids_game/Screen/challenges_screen.dart';
import 'package:kids_game/Screen/lessons_screen.dart';
import 'package:kids_game/Screen/profile_screen.dart';
import 'package:kids_game/Screen/verbal_skills_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenIndex = 0;
  final List<Widget> _pages = [
    const LessonsScreen(), // This is the first page in the bottom navigation bar
    const VerbalSkillsScreen(), // This is the second page
    const ProfileScreen(), // This is the third page
    const ChallengesScreen(), // This is the fourth page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFBF5F2),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFBF5F2),
      ),
      // <---------------------- First new part: body ---------------------->
      body: IndexedStack(
        index: currenIndex,
        children: _pages,
      ),
      // <---------------------- Second new part: bottomNavigationBar -------->
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currenIndex,
        onTap: (int index) {
          setState(() {
            currenIndex = index;
          });
        },
        selectedItemColor: Colors.blue, // Color of the selected item in the navigation bar
        unselectedItemColor: Colors.grey, // Color of the unselected items
        showSelectedLabels: true, // Show labels for the selected items
        showUnselectedLabels: false, // Hide labels for the unselected items
        type: BottomNavigationBarType.fixed, // Keeps the items in a fixed position
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // First item: icon and label for the HomeScreen page
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.record_voice_over),
            label: '', // Second item: icon and label for the VerbalSkillsScreen page
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: '', // Third item: icon and label for the ProfileScreen page
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '', // Fourth item: icon and label for the ChallengesScreen page
          ),
        ],
      ),
    );
  }
}

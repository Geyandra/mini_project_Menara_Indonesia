import 'package:flutter/material.dart';
import 'package:mini_project_menara_indonesia/View/popular.dart';
import 'package:mini_project_menara_indonesia/View/recommend.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int currenticon = 0;
  final screen = [
    const PopularComics(),
    const RecommendComics(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currenticon,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white24,
          selectedItemColor: Colors.blue.shade300,
          unselectedItemColor: Color.fromRGBO(205, 205, 205, 1),
          onTap: (value) {
            setState(() {
              currenticon = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Popular",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: "Recommend",
            ),
          ]),
      body: screen[currenticon],
    );
  }
}
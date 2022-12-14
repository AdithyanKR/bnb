import 'package:flutter/material.dart';


class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.person),
    Icon(Icons.pentagon),
    Icon(Icons.home),
    Icon(Icons.home),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: body[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 9,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              "assets/frame.png",
              color: Colors.teal,
            ),
            activeIcon: Image.asset(
              "assets/frame.png",
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              "assets/diamonds.png",
              color: Colors.teal,
            ),
            activeIcon: Image.asset(
              "assets/diamonds.png",
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              "assets/Y.png",
              color: Colors.teal,
            ),
            activeIcon: Image.asset(
              "assets/Y.png",
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              "assets/book.png",
              color: Colors.teal,
            ),
            activeIcon: Image.asset(
              "assets/book.png",
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              "assets/setting-2.png",
              color: Colors.teal,
            ),
            activeIcon: Image.asset(
              "assets/settings-2.png",
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

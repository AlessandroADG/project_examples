import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;
  List<Widget> text = [
    Text(
      'Index 0: Home Page',
      style: TextStyle(fontSize: 22, color: Colors.lightGreen[400]),
    ),
    Text(
      'Index 1: Settings Page',
      style: TextStyle(fontSize: 22, color: Colors.lightGreen[400]),
    ),
    Text(
      'Index 2: Help Page',
      style: TextStyle(fontSize: 22, color: Colors.lightGreen[400]),
    ),
    Text(
      'Index 3: Information Page',
      style: TextStyle(fontSize: 22, color: Colors.lightGreen[400]),
    ),
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        currentIndex: index,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        selectedIconTheme: IconThemeData(color: Colors.amber[300]),
        unselectedFontSize: 14,
        onTap: _changeIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home page'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings page'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Help page'),
          BottomNavigationBarItem(icon: Icon(Icons.info_rounded), label: 'Information page')
        ],
      ),
      appBar: AppBar(
        title: const Text(
          'Bottom Navigation Bar',
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: text.elementAt(index),
      ),
    );
  }

  void _changeIndex(int value) {
    setState(() {
      index = value;
    });
  }
}

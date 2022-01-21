import 'package:flutter/material.dart';
import 'package:personal_feed/UI/collections_screen.dart';
import 'package:personal_feed/UI/discover_screen.dart';
import 'package:personal_feed/UI/news_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const mainScreen(),
    );
  }
}

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    News(),
    Discover(),
    Collections(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: Colors.lightBlue.shade300,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.lightBlue.shade300,
          size: 28.0,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
          size: 24.0,
        ),
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.bookmark,),label: "News" ,),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_outlined,),label: "Discover",),
          BottomNavigationBarItem(icon: Icon(Icons.bookmarks_outlined,),label: "Collections",),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),

    );
  }
}






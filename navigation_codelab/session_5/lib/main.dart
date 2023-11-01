import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'three_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Codelab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/first', // Tentukan rute awal, misalnya '/first'
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThreeScreen(),
      },
      // home: MyBottomNavigationBar(), // Anda tidak perlu menggunakan properti home jika menggunakan routes.
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    FirstScreen(),
    SecondScreen(),
    ThreeScreen(), // Perubahan: Mengganti ThirdScreen() menjadi ThreeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Three', // Perubahan: Mengganti 'Third' menjadi 'Three'
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_assignment/about.dart';
import 'package:flutter_assignment/home.dart';
import 'package:flutter_assignment/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Bakery Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        primaryColor: const Color(0xFFD7CCC8),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFD7CCC8),
          foregroundColor: Colors.black,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const MainScreen(),

      routes: {
    '/home': (context) => const HomePage(),
    '/about': (context) => const AboutPage(),
    '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    AboutPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF8D6E63),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

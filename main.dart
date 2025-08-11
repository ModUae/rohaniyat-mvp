import 'package:flutter/material.dart';

void main() {
  runApp(RohaniyatApp());
}

class RohaniyatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'روحانيات',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo',
      ),
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    QuranPage(),
    AzkarPage(),
    PrayerPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('روحانيات'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'القرآن',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'الأذكار',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'الصلاة',
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'مرحبا بك في روحانيات',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class QuranPage extends StatelessWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'صفحة القرآن هنا',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class AzkarPage extends StatelessWidget {
  const AzkarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'صفحة الأذكار هنا',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class PrayerPage extends StatelessWidget {
  const PrayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'صفحة مواقيت الصلاة هنا',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../home_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Screen 2'),
    Text('Screen 3'),
    Text('Screen 4'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }); // print('Tapeped index is ${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff131313),
          onTap: _onItemTapped,
          elevation: 0,
          backgroundColor: Color(0xff131313),
          showSelectedLabels: false,
          unselectedItemColor: Color(0xff6d6d6d6d),
          showUnselectedLabels: false,
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
          ),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/home2.png'),
                height: 25,
              ),
              activeIcon: Image(
                image: AssetImage('assets/images/home2.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/activity1.png'),
                height: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/message.png'),
                height: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/profile1.png'),
                height: 25,
              ),
              label: '',
            ),
          ]),
    );
  }
}

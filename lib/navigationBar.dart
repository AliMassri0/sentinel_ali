
import 'package:flutter/material.dart';
import 'package:sentinel/dashboard.dart';
import 'package:sentinel/priority.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);
  //final List<Pharmacy> pharmacy = phr;
  @override
  _NavBarState createState() => _NavBarState();
  
}
List <Widget> _pages=[
  const DashBoard(),
  const Priority(),
  Scaffold(
    backgroundColor: Colors.green,
  ),
  Scaffold(
    backgroundColor: Colors.blue,
  ),
];
class _NavBarState extends State<NavBar> {
  int _selectedPageIndex = 0;
  void _x1(int index){
   setState(() {
     _selectedPageIndex = index;
   });
  }
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(

      selectedItemColor: const Color.fromRGBO(18, 108, 242, 1),
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedPageIndex,
      onTap: _x1,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/4.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/1.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/2.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/3.png')),
          label: '',
        ),
        
      ],
      ),
      
    ),
    );
  }
}
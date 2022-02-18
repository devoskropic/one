import 'package:flutter/material.dart';
import 'card1/card1.dart';
import 'card2/card2.dart';
import 'card3/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // HW: Add state variables and functions
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    // TASK: Replace with Card1
    // Container(color: Colors.red),
    const Card1(),
    // TASK: Replace with Card2
    // Container(color: Colors.green),
    const Card2(),
    // TASK: Replace with Card3
    // Container(color: Colors.blue)
    const Card3(),
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
        title: Text(
          'Hablemo',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TASK: Show selected tab
      body: pages[_selectedIndex],
      // body: Center(
      //   child: Text('Let\'s get cooking!',
      //       style: Theme.of(context).textTheme.headline1),
      // ),

      // TASK: Add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TASK: Set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Card2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Card3",
          ),
        ],
      ),
    );
  }
}

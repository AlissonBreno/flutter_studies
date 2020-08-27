import 'package:bottom_appbar/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'home_page.dart';

class MenuBottomBar extends StatefulWidget {
  @override
  _MenuBottomBarState createState() => _MenuBottomBarState();
}

class _MenuBottomBarState extends State<MenuBottomBar> {

  int _currentIndex = 0;
  bool _isActive = false;

  final tabs = <Widget>[
    HomePage(),
    SearchPage()    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomMenuTest'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MaterialButton(
              height: MediaQuery.of(context).size.height / 15,
              minWidth: MediaQuery.of(context).size.width / 2,
              color: !_isActive ? Colors.deepPurple[50] : Colors.deepPurple,
              child: Text(
                'Vendas', 
                style: TextStyle(
                  fontSize: 20.0,
                  color: !_isActive ? Colors.deepPurple : Colors.deepPurple[50],
                ),
              ),
              onPressed: (){
                setState(() {
                  _currentIndex = 0;
                  _isActive = false;
                });
              },
            ),
            MaterialButton(
              height: MediaQuery.of(context).size.height / 15,
              minWidth: MediaQuery.of(context).size.width / 2,
              color: _isActive ? Colors.deepPurple[50] : Colors.deepPurple,
              child: Text(
                'Pagamentos', 
                style: TextStyle(
                  fontSize: 20.0,
                  color: _isActive ? Colors.deepPurple : Colors.deepPurple[50],
                ),
              ),
              onPressed: (){
                setState(() {
                  _currentIndex = 1;
                  _isActive = true;
                });
              },
            ),
          ],
        ),
        
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   fixedColor: Colors.green,
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.deepPurple,
      //       icon: Icon(Icons.home),
      //       title: Text('Home'),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.greenAccent,
      //       icon: Icon(Icons.search),
      //       title: Text('Search'),
      //     ),

      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
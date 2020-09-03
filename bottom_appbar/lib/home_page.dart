import 'package:bottom_appbar/tabs/homePageTabs/tab1.dart';
import 'package:bottom_appbar/tabs/homePageTabs/tab2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> 
  with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 17.5,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.deepPurple,
          unselectedLabelColor: Colors.deepPurple[50],
          indicator: BoxDecoration(
            color: Colors.deepPurple[50],
            border: Border(
              bottom: BorderSide(color: Colors.deepPurple[200], width: 3.0,),
            ),
          ),
          tabs: <Widget>[
            Tab(
              child: Container(
                child: Text(
                  'Tab 1',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Text(
                  'Tab 2',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Tab1(),
          Tab2(),
        ],
      ),
    );
  }
}
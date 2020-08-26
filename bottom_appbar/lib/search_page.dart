import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> 
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
      appBar: TabBar(
        controller: _tabController,
        tabs: <Widget>[
          Tab(
            child: Container(
              child: Text(
                'Tab 3',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              child: Text(
                'Tab 4',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text('Tab 3')),
          Center(child: Text('Tab 4')),
        ],
      ),
    );
  }
}
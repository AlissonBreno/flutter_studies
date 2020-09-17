import 'package:bottom_appbar/tabs/searchPageTabs/tab3.dart';
import 'package:bottom_appbar/tabs/searchPageTabs/tab4.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final appBarHeight;

  const SearchPage({
    Key key,
    @required this.appBarHeight,
  }) : super(key: key);

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
      appBar: AppBar(
        toolbarHeight: widget.appBarHeight,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.deepPurple,
          unselectedLabelColor: Colors.deepPurple[50],
          indicator: BoxDecoration(
            color: Colors.deepPurple[50],
            border: Border(
              bottom: BorderSide(
                color: Colors.deepPurple[200],
                width: 3.0,
              ),
            ),
          ),
          tabs: <Widget>[
            Tab(
              child: Container(
                child: Text(
                  'Tab 3',
                  style: TextStyle(
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
          Tab3(),
          Tab4(),
        ],
      ),
    );
  }
}

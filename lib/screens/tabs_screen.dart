import "package:flutter/material.dart";

import '../widgets/main_drawer.dart';
import './categories_screen.dart';
import './favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String , Object>> _pages = [
    {'page' : CategoriesScreen(), 'title' : 'Categories'},
    {'page' : FavouriteScreen(), 'title' : 'Favorites'},
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
    // DefaultTabController(
    //   length: 2,
      // child: 
      Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]['title']),
          // bottom: TabBar(
          //   tabs: <Widget>[
          //     Tab(
          //       icon: Icon(Icons.category),
          //       text: 'Categories',
          //     ),
          //     Tab(
          //       icon: Icon(Icons.star),
          //       text: 'Favourite',
          //     )
          //   ],
          // ),
        ),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          // type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Categories')
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Favorites')
            ),
          ],
        ),
        // TabBarView(children: <Widget>[
        //   CategoriesScreen(), FavouriteScreen() 
        // ],),
      // ),
    );
  }
}

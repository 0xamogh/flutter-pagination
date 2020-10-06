import 'package:jramogh/config/assets.dart';
import 'package:jramogh/pages/introduction.dart';
import 'package:jramogh/tabs/about_tab.dart';
import 'package:jramogh/tabs/blog_tab.dart';
import 'package:jramogh/tabs/projects_tab.dart';
import 'package:jramogh/widgets/flutter_parallax.dart';
import 'package:jramogh/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    Introduction(),
    ProjectsTab(),
    ProjectsTab(),
    ProjectsTab(),
    ProjectsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterParallax(
        screens: tabWidgets,
        backgroundImage: AssetImage("assets/background1.jpg"),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle),
      //       title: Text('About'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chrome_reader_mode),
      //       title: Text('Blog'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.mobile_screen_share),
      //       title: Text('Projects'),
      //     )
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: (index)=> setState(() => _selectedIndex = index),
      //   selectedItemColor: Theme.of(context).accentColor,
      // ),
    );
  }
}

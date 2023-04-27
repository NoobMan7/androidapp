// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
// class HomePage extends StatelessWidget {
//    HomePage({super.key, required this.name});
//   String name;

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Center(child: Text(name)),
//     );
//   }
// }




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        // leading: IconButton(
        //   icon: AnimatedIcon(
        //     icon: AnimatedIcons.menu_arrow,
        //     progress: _isDrawerOpen
        //         ? AlwaysStoppedAnimation(0.5)
        //         : AlwaysStoppedAnimation(-0.5),
        //   ),
          // onPressed: () {
          //   setState(() {
          //     _isDrawerOpen = !_isDrawerOpen;
          //   });
          // },
        ),
      
      body: Center(
        child: Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Do something when the item is pressed
                print('Item 1 pressed!');
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Do something when the item is pressed
                print('Item 2 pressed!');
              },
            ),
          ],
        ),
      ),
    );
  }
}

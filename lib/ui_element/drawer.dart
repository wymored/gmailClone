import 'package:flutter/material.dart';

class DrawerSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 70,
            child: Text(
              'Gmail Clone',
              style: TextStyle(
                color: Colors.red,
                fontFamily: 'jost',
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

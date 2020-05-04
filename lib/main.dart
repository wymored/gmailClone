import 'package:flutter/material.dart';
import 'package:gmailclone/ui_element/inbox_section.dart';
import 'package:gmailclone/ui_element/primary_section.dart';
import 'package:gmailclone/ui_element/primary_text.dart';
import 'package:gmailclone/ui_element/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            padding: EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: ListView(
              children: <Widget>[
                SearchBar(),
                PrimaryText(),
                PrimarySection(),
                InboxSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

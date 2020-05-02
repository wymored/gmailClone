import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 200.0, horizontal: 40.0),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Alesia Kidwell',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'alesia.Kidwell@gmail.com',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Container(
                width: 220,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                  child: Text(
                    'Manage your Google Account',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            ButtomConfigColumns(
              title: 'Add another account',
              icon: FontAwesomeIcons.userPlus,
            ),
            SizedBox(
              height: 15.0,
            ),
            ButtomConfigColumns(
              title: 'Manage accounts on your device',
              icon: FontAwesomeIcons.wrench,
            )
          ],
        ),
      ),
    );
  }
}

class ButtomConfigColumns extends StatelessWidget {
  const ButtomConfigColumns({@required this.title, @required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0),
        Icon(
          icon,
          color: Colors.black54,
          size: 18.0,
        ),
        SizedBox(width: 20.0),
        Text(
          '$title',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 14.0,
              fontFamily: 'Jost',
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

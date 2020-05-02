import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrimarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PrimaryElement(
          leadIcon: FontAwesomeIcons.users,
          iconColor: Colors.blue,
          title: 'Social',
          subtitle: 'Youtube,Facebook,Twi...',
          mailcount: '12 new',
          sidecontColor: Colors.blue,
        ),
        PrimaryElement(
          leadIcon: FontAwesomeIcons.swatchbook,
          iconColor: Colors.green,
          title: 'Promotion',
          subtitle: 'Promising offers waiting for you',
          mailcount: '30 new',
          sidecontColor: Colors.green,
        ),
        PrimaryElement(
          leadIcon: FontAwesomeIcons.comments,
          iconColor: Colors.purple,
          title: 'Forums',
          subtitle: 'Adive and tips on how to flutter',
          mailcount: '112 new',
          sidecontColor: Colors.purple,
        ),
      ],
    );
  }
}

class PrimaryElement extends StatelessWidget {
  PrimaryElement({
    @required this.iconColor,
    @required this.leadIcon,
    @required this.title,
    @required this.subtitle,
    @required this.mailcount,
    @required this.sidecontColor,
  });

  final IconData leadIcon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final String mailcount;
  final Color sidecontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                leadIcon,
                color: iconColor,
              ),
              SizedBox(
                width: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$title',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w800,
                      fontSize: 18.0,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '$subtitle',
                    style: TextStyle(
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 24.0,
            width: 66.0,
            decoration: BoxDecoration(
              color: sidecontColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Center(
              child: Text(
                '$mailcount',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w200,
                  fontSize: 13.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

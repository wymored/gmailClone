import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gmailclone/ui_element/full_mail_screen.dart';

class InboxSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InboxElement(
          senderpic: AssetImage('assets/images/pic1.jpg'),
          title: 'David, Bik',
          object: 'Trip To Morocco',
          content: 'Sign up in our next trip to Morocco ....',
          time: '1:40 PM',
        ),
        InboxElement(
          senderpic: AssetImage('assets/images/pic2.jpg'),
          title: 'Junna, Alen , me',
          object: 'School Project',
          content: 'Hommies i just finish the ui part wbu?',
          time: '3:00 AM',
        ),
        InboxElement(
          senderpic: AssetImage('assets/images/pic3.jpg'),
          title: 'Sigma Groupe',
          object: 'A New Offer',
          content: 'Discover our new health care packet ....',
          time: '8:12 PM',
        ),
        InboxElement(
          senderpic: AssetImage('assets/images/pic4.jpg'),
          title: 'Alex',
          object: 'A New Offer',
          content: 'Discover our new health care packet ....',
          time: '4:13 AM',
        ),
        InboxElement(
          senderpic: AssetImage('assets/images/pic5.jpg'),
          title: 'Mark, Kile',
          object: 'A New Offer',
          content: 'Discover our new health care packet ....',
          time: '5:00 AM',
        ),
        InboxElement(
          senderpic: AssetImage('assets/images/pic6.jpg'),
          title: 'Sigma Groupe',
          object: 'A New Offer',
          content: 'Discover our new health care packet ....',
          time: '8:12 PM',
        ),
      ],
    );
  }
}

class InboxElement extends StatelessWidget {
  const InboxElement({
    @required this.title,
    @required this.object,
    @required this.content,
    @required this.time,
    @required this.senderpic,
  });

  final String title;
  final String object;
  final String content;
  final String time;
  final AssetImage senderpic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullMail(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5.0),
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 25.0,
              backgroundImage: senderpic,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'jost',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '$object',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'jost',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '$content',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'jost',
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$time',
                  style: TextStyle(
                      fontFamily: 'Jost', fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 12.0),
                Icon(
                  FontAwesomeIcons.star,
                  size: 15.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

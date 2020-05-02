import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FullMail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            size: 18,
            color: Colors.red,
          ),
        ),
        actions: <Widget>[
          ActionChild(
            icon: FontAwesomeIcons.inbox,
          ),
          SizedBox(width: 20.0),
          ActionChild(
            icon: FontAwesomeIcons.trashAlt,
          ),
          SizedBox(width: 20.0),
          ActionChild(
            icon: FontAwesomeIcons.envelopeOpen,
          ),
          SizedBox(width: 20.0),
          ActionChild(
            icon: FontAwesomeIcons.ellipsisV,
          ),
          SizedBox(width: 12.0),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Trip To Morocco',
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 22.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          'inbox',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 12.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  FontAwesomeIcons.star,
                  size: 16.0,
                  color: Colors.grey[500],
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/images/pic1.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'david.kley@gmail.com',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Oct 13',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w200,
                            fontSize: 13.0,
                            height: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ActionChild(icon: FontAwesomeIcons.undo),
                    SizedBox(width: 30.0),
                    ActionChild(icon: FontAwesomeIcons.ellipsisV),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Text(
                'Lorem ipsum dolor sit amet, sed elit fringilla et, mauris justo vel risus at augue, sed natoque dolor, suscipit nec venenatis blandit molestie posuere urna, porta ut libero aut egestas vulputate. Aliquam quam, magna nulla at nec. Est eu rutrum ut sem, ac congue, sodales magna ac, ut a in pretium rutrum, ut sed duis scelerisque sollicitudin. Lorem cras aliquam, nam at. Sollicitudin sapien. Ut mi quam montes neque maecenas nec, vestibulum quisque leo, vitae turpis integer viverra pellentesque. Interdum elementum velit, non et purus pellentesque donec imperdiet, leo ut, nibh vestibulum sollicitudin eu porta sed. Lacinia fusce mollis wisi egestas lorem, sit dolore amet sit odio tortor.',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.w200,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionChild extends StatelessWidget {
  const ActionChild({@required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 17,
      color: Colors.black54,
    );
  }
}

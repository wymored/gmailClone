import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      height: 40,
      width: double.infinity,
      child: Text(
        'PRIMARY',
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black54,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.0,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

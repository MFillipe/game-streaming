import 'package:flutter/material.dart';

class CustomFilledField extends StatelessWidget {
  final String label;
  final IconData iconData;

  CustomFilledField({@required this.label, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )),
            filled: true,
            fillColor: Colors.grey[800],
            contentPadding: EdgeInsets.only(left: 16),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 24, left: 26),
              child: Icon(
                iconData,
                color: Colors.grey[600],
                size: 24,
              ),
            )),
      ),
    );
  }
}

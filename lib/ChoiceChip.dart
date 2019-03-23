import 'package:flutter/material.dart';

class ChoiceChipCustom extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  ChoiceChipCustom(this.icon, this.text, this.isSelected);

  _ChoiceChipCustomState createState() => _ChoiceChipCustomState();
}

class _ChoiceChipCustomState extends State<ChoiceChipCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected
          ? BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20.0,
            color: Colors.white,
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
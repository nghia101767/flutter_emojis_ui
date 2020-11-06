import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  const TextHeader(
      {Key key,
      @required this.text,
      this.color = Colors.black,
      this.decoration,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final TextDecoration decoration;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 27,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration),
      ),
    );
  }
}

class TextLarge extends StatelessWidget {
  const TextLarge(
      {Key key,
      @required this.text,
      this.color = Colors.black,
      this.decoration,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final TextDecoration decoration;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 22,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration),
      ),
    );
  }
}

class TextMedium extends StatelessWidget {
  const TextMedium(
      {Key key,
      @required this.text,
      this.color = Colors.black,
      this.decoration,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final TextDecoration decoration;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration),
      ),
    );
  }
}

class TextNormal extends StatelessWidget {
  const TextNormal(
      {Key key,
      @required this.text,
      this.color = Colors.black,
      this.decoration,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final TextDecoration decoration;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration),
      ),
    );
  }
}

class TextSmall extends StatelessWidget {
  const TextSmall(
      {Key key,
      @required this.text,
      this.color = Colors.black,
      this.decoration,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final TextDecoration decoration;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 12,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration),
      ),
    );
  }
}

class TextTiny extends StatelessWidget {
  const TextTiny(
      {Key key,
      @required this.text,
      this.color = Colors.black,
      this.decoration,
      this.fontWeight = FontWeight.normal})
      : super(key: key);
  final String text;
  final Color color;
  final TextDecoration decoration;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 7,
            color: color,
            fontWeight: fontWeight,
            decoration: decoration),
      ),
    );
  }
}

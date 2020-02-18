import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonTitle;
  final Color color;
  final VoidCallback onPressed;

  const RoundedButton(
      {Key key,
      @required this.buttonTitle,
      @required this.color,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';

class MyCardContainer extends StatelessWidget {
  MyCardContainer({required this.colour, this.childWidget, this.onPress});

  final Color colour;
  final Widget? childWidget;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({required this.text, this.onClick});

  String text;
  VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: Colors.red,
        height: 70,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            text,
            style:kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  RoundedButton({this.icons, this.onPress, this.color});

  IconData? icons;
  VoidCallback? onPress;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0,
      constraints: BoxConstraints.expand(
          height: 50,
          width: 50
      ),
      shape: CircleBorder(),
      child: Icon(
          icons
      ),
      fillColor: color,
    );
  }
}
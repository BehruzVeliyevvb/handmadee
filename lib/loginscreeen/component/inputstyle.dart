import 'package:flutter/material.dart';

class InputStyle extends StatefulWidget {
  const InputStyle({
    required this.text,
    required this.isPassword,
    Key? key}) : super(key: key);
  final String text;
  final  bool isPassword;
  @override
  _InputStyleState createState() => _InputStyleState();
}

class _InputStyleState extends State<InputStyle> {
  @override
  Widget build(BuildContext context) {
    widget.isPassword==false;

      if(widget.isPassword){
        return TextField(
        decoration: InputDecoration(
          labelText: widget.text,
          hoverColor: Color(0XFF32594F),
        ),
      obscureText: true,
      );}
      else{
        return TextField(
          decoration: InputDecoration(
            labelText: widget.text,
            hoverColor: Color(0XFF32594F),
          ),
        );
      }

  }
}

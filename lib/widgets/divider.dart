import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  const divider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 120.0),
      child: Container(
        width: double.infinity,
        height: size.height*0.02,
        color: Colors.grey[100],
      ),
    );
  }
}
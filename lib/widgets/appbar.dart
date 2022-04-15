import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
AppBar buildAppBar(BuildContext context,
    {required String title,
      required List<Widget> actions,
      required  bool type,
    }) {
  return AppBar(
    backgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    elevation: 0,
    title:Text(title,style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.w200, fontSize: 26)),
    centerTitle: true,
  automaticallyImplyLeading: false,

    actions: actions,
  );
}
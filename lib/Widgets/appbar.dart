import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context,
    {required String title,
      required List<Widget> actions,
      required  bool type,
      required Widget leading}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    elevation: 0,
    title: type?Container(
      height: 35,
      child: const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            fillColor: Colors.transparent,
            contentPadding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            prefixIcon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            hintText: 'Find for Nutrisi'),
      ),
    ):Text(title,style: TextStyle(color: kPrimaryColor)),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        margin: EdgeInsets.only(top: 24,bottom: 28),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color:Colors.black.withOpacity(0.075),
                offset: Offset(0.0,1.0),
                blurRadius:10.0,
              )

            ]
        ),
        child: TextFormField(
          decoration: InputDecoration(
            icon: Container(
                width: 18,
                height: 18,
                child: SvgPicture.asset('assets/icons/sarch2.svg')),
            hintText: 'Search uique handmade...',
            hintStyle: TextStyle(
              color: Colors.black26,
              fontSize: 14.0,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
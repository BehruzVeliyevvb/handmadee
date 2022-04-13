import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTap extends StatelessWidget {
  const LoginTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[ Container(
          height: MediaQuery.of(context).size.height * 0.32,
          width: MediaQuery.of(context).size.width * 0.4,
          child: SvgPicture.asset('assets/icons/logo2.svg'),

      ),
    ]
    );
  }
}

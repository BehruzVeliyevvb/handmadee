import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class countBasket extends StatelessWidget {
  const countBasket({
    required this.numberOfBasket,
    Key? key,
  }) : super(key: key);
final int numberOfBasket;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children:[ IconButton(
            icon: SvgPicture.asset('assets/icons/logo2.svg'),
            onPressed: () {}),
        if (numberOfBasket>0)
        Positioned(
            top: 8,
            right: 4,
            child: Container(
          width: 18,
          height: 18,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 1.0)
          ),
              child: Text(
                '$numberOfBasket',
              ),

        ))
        ]
      ),
    );
  }
}

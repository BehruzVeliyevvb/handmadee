import 'package:ecommerce/chatscreen/chat.dart';
import 'package:ecommerce/deliveryscreen/delivery.dart';
import 'package:ecommerce/walletscreen/wallet.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../profilescreen/profile.dart';
import 'component/body.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delayed_display/delayed_display.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedItemIndex = 0;
  final List _children = [
    Body(),
    Delivery(),
    Chat(),
    Wallet(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: _children.elementAt(selectedItemIndex),
      bottomNavigationBar: DelayedDisplay(
        delay: Duration(milliseconds: 200),
        child: Container(
          height: size.height * 0.100,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNavbar('assets/icons/dashboard.svg', 0, 'Home'),
              buildNavbar('assets/icons/delivery.svg', 1, 'Delivery'),
              buildNavbar('assets/icons/chat.svg',2, 'Chat'),
              buildNavbar('assets/icons/wallet.svg', 3, 'Wallet'),
              buildNavbar('assets/icons/profile.svg', 4, 'Profile'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavbar(
    String icons,
    int index,
    String name,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: DelayedDisplay(
        delay: Duration(milliseconds: 400 * index),
        slidingBeginOffset: const Offset(-1.0, 0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 25,
                  width: 25,
                  child: SvgPicture.asset(
                    icons,
                    color: kPrimaryColor,
                  )),
              SizedBox(
                height: 4,
              ),
              Text(
                name,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

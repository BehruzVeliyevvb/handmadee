import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../mockupdata/dashboardnewscard.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(demoNewsCard.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 5, right: 5, bottom: 20),
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(0.4, 1) // Shadow position
                        ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: size.height * 0.13,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(demoNewsCard[index].img),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14.0),
                      child: Text(
                        demoNewsCard[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: kPrimaryColor),
                      ),
                    )
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

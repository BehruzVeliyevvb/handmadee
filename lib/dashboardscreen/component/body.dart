import 'package:ecommerce/constants.dart';
import 'package:ecommerce/mockupdata/dashboardnewscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delayed_display/delayed_display.dart';
import '../../Widgets/appbar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List images = [
    "vintage.jpg",
    "vintage2.jpg",
    "vintage3.jpg",
  ];
  List text = [
    "Vintage clothes of the week",
    "Vintage furniture of the week",
    "vintage jewelry of the week ",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
      delay: Duration(milliseconds: 400 ),
      slidingBeginOffset: const Offset(0.0, -1),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'HandMade',
          leading: Transform.translate(
            offset: const Offset(kDefaultPadding * 0.5, 0),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/logo2.svg'),
              onPressed: () {},
            ),
          ),
          type: true,
          actions: [
            IconButton(
                icon: SvgPicture.asset('assets/icons/basket.svg'),
                onPressed: () {}),
          ],
        ),
        body: SingleChildScrollView(

          child: Column(
            children: [
              Stack(overflow: Overflow.visible, children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    child: PageView.builder(
                        itemCount: images.length,
                        itemBuilder: (_, index1) {
                          return Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/" + images[index1],
                                    ),
                                    fit: BoxFit.cover)),
                          );
                        }),
                  ),
                ),
                Positioned(
                    left: 40,
                    bottom: -120,
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PageView.builder(
                            itemCount: images.length,
                            itemBuilder: (_, index2) {
                              return Column(
                                children: [
                                  Center(
                                      child: Text(
                                    text[index2],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w200),
                                  )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text(
                                      'Search Now',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w100,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),

                                ],
                              );
                            }),
                      ),
                    )),
                Positioned(
                    left: 160,
                    bottom: -80,child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index3){
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: size.width*0.05,
                          height: size.width*0.006,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:kPrimaryColor,
                          ),

                        ),
                      );
                    })
                ))
              ]),
              Padding(
                padding: const EdgeInsets.only(
                    top: 120.0),
                child: Container(
                  width: double.infinity,
                  height: size.height*0.02,
                  color: Colors.grey[100],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(demoNewsCard.length, (index){
                     return Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 5,right: 5, bottom: 20),
                        child: Container(
                          width: size.width*0.3,
                          height: size.height*0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0.4,1) // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: size.height*0.13,
                                  width: double.infinity,

                                  decoration: BoxDecoration
                                    (
                                    image: DecorationImage(
                                      image: AssetImage(
                                         demoNewsCard[index].img),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: Text(demoNewsCard[index].name,style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: kPrimaryColor),),
                              )
                            ],
                          ),
                        ),
                      );
                    })

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/appbar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List images=[
    "vintage.jpg",
    "vintage2.jpg",
    "vintage.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'HandMade',
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon:SvgPicture.asset('assets/icons/logo2.svg'),
            onPressed: () {},
          ),
        ),
        type: true,
        actions: [
          IconButton(icon: SvgPicture.asset('assets/icons/basket.svg'), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Stack(
                  overflow: Overflow.visible,
                children:[
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: double.infinity,
                          child: PageView.builder(
                            itemCount: images.length,
              itemBuilder: (_,index){ return Container(
                margin: EdgeInsets.only(top: 10),
                decoration:BoxDecoration(
                    image: DecorationImage(
                            image: AssetImage(
                              "assets/images/"+images[index],
                            ),
                            fit: BoxFit.cover
                    )
                ) ,
              );}

                          ),
                        ),
                      ),
                  Positioned(
                    left: 40,
                      bottom: -120,
                      child: Container(
                    height: size.height*0.2,
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Center(child: Text('Vintage design of\n        the week ', style: TextStyle(color: kPrimaryColor,fontSize: 26,fontWeight: FontWeight.w200),)),
                           SizedBox(height: 10,),
                            GestureDetector(
                              onTap: (){},
                              child: Text('Search Now', style: TextStyle(color: kPrimaryColor, fontSize: 12,fontWeight: FontWeight.w100,  decoration: TextDecoration.underline,),),
                            )
                            ],
                          ),
                        ),

                  ))
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}



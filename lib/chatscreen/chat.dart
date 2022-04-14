import 'package:flutter/material.dart';

import '../constants.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  List images=[
    "vintage.jpg",
    "vintage2.jpg",
    "vintage.jpg",
  ];
  List text = [
    "Vintage design of the week",
    "Vintage furniture of the week",
    "vintage new ",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
       body: PageView.builder(
           itemCount: images.length,
           itemBuilder: (_,index){
             return Stack(
               overflow: Overflow.visible,
             children:[ Container(
               height: MediaQuery.of(context).size.height / 3,
               width: double.infinity,
               margin: EdgeInsets.only(top: 10),
               decoration:BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage(
                         "assets/images/"+images[index],
                       ),
                       fit: BoxFit.cover
                   )
               ) ,
             ),
               Positioned(
                   left: 40,
                   bottom: 400,
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
           ]);}

       ),

    );
  }
}

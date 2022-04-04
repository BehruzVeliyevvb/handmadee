import 'package:ecommerce/loginscreeen/loginscreen.dart';
import 'package:flutter/material.dart';

import '../Widgets/inputstyle.dart';
import '../dashboardscreen/dashboardscreen.dart';
import '../loginscreeen/component/logintap.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Center(child: LoginTap()),
             Container(
                 padding: EdgeInsets.symmetric(
                     horizontal: size.height * 0.03),
                 child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Welcome!',
                         style: TextStyle(
                             fontSize: 30,
                             color: Color(0XFF32594F),
                             fontWeight: FontWeight.bold),
                       ),
                       Text(
                         'Please Log In to Your Account',
                         style: TextStyle(
                             color: Colors.grey,
                             fontSize: 20,
                             fontWeight: FontWeight.w500),
                       ),
                       SizedBox(
                         height: size.height * 0.01,
                       ),
                       InputStyle(text: 'Name', isPassword: false,),
                       InputStyle(text: 'Phone Number', isPassword: false,),
                       InputStyle(text: 'Email', isPassword: false,),
                       InputStyle(text: 'Password', isPassword: true,),
                       SizedBox(
                         height: size.height * 0.08,
                       ),
                       InkWell(
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => LoginScreen()),
                             );
                           },
                           child: Container(
                             padding: EdgeInsets.symmetric(vertical: 20),
                             width: size.width,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(
                                 Radius.circular(20),
                               ),
                               color: Color(0XFF32594F),
                             ),
                             child: Center(
                               child: Text(
                                 'Sign Up',
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 22,
                                     fontWeight: FontWeight.w700),
                               ),
                             ),
                           )),
                       SizedBox(
                         height: size.height * 0.03,
                       )


                     ])),
           ],
         ),
       ),
    );
  }
}

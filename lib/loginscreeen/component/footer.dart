import 'package:ecommerce/registrscreen/registrscreen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Don`t have an account?',style: TextStyle(fontSize: 18,),),
          GestureDetector(
            onTap:(){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegistrationScreen()),
            );},
            child: Text('SignUp',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:kPrimaryColor,),),

          )

        ],
      ),
    );
  }
}

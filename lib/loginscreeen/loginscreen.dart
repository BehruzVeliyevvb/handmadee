import 'package:ecommerce/dashboardscreen/dashboardscreen.dart';
import 'package:ecommerce/loginscreeen/component/footer.dart';
import 'package:flutter/material.dart';

import '../Widgets/inputstyle.dart';
import 'component/logintap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LoginTap(),

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
                      InputStyle(text: 'Email', isPassword: false,),
                      InputStyle(text: 'Password', isPassword: true,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardScreen()),
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
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.002,
                            width: size.width * 0.08,
                            color: Colors.black,
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text('OR'),
                            ),
                          ),
                          Container(
                            height: size.height * 0.002,
                            width: size.width * 0.08,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.1,
                            width: size.width * 0.2,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0XFF32594F),
                                  width: 0.5,
                                )),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/googleLogo.png'))),
                            ),
                          )
                        ],
                      ),


                    ])),
            SizedBox(
              height: size.height * 0.03,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

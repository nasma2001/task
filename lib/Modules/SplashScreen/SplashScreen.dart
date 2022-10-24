import 'package:flutter/material.dart';
import 'package:task/Modules/Login/Login.dart';

import '../../Shared/Components/Components.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 450,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: 397,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(120),
                              bottomLeft: Radius.circular(120),
                            ),
                            color: Color(0xff25AB75)),
                      ),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'APICAL',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Oswald',
                              letterSpacing: -2.23576,
                              color: Colors.black,
                            ),
                          ),
                          Image(
                            image: AssetImage('assets/images/Vector.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 109,
              ),
              const Text(
                'APICAL FITNESS',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Oswald',
                  letterSpacing: -2.23576,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Welcome to LifeTime!',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 117,
              ),
              defaultButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  text: 'lets start for free',
                  isUpper: true,
                  context: context,
                  textColor: Colors.white,
                  icon: Icons.arrow_forward_ios),
            ],
          )
        ],
      ),
    );
  }
}

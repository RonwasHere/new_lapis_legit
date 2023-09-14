import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: 30,
              right: 30,
            ),
            child: Image.asset(
              'assets/logo_isp.png',
              width: MediaQuery.of(context).size.width,
            ),
          ),
          SizedBox(height: 90),
          Image.asset(
            'assets/person.png',
            width: MediaQuery.of(context).size.width,
            height: 160,
          ),
          SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
            onPressed: () {},
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

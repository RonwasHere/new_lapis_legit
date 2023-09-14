import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 60),

              //BAGIAN ---OR----
              Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 2),
                  ),
                  SizedBox(width: 20),
                  Text("OR"),
                  SizedBox(width: 20),
                  Expanded(
                    child: Divider(thickness: 2),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //LOGO-LOGO
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icng.png',
                    width: 40,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/icnf.png',
                    width: 40,
                  ),
                  SizedBox(width: 20),
                  Image.asset(
                    'assets/icnios.png',
                    width: 40,
                  ),
                ],
              ),
              SizedBox(height: 20),
              //TULISAN TIDAK PUNYA AKUN
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tidak punya akun INDRACO ? ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(width: 5),
                  Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffff570a),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

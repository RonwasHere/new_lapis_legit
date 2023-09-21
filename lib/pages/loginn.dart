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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/logo_isp.png",
                width: MediaQuery.of(context).size.width,
                height: 150,
              ),
              SizedBox(height: 50),
              Text(
                'Username',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              TextFormField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade600,
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.red.shade400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Password',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              TextFormField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade600,
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.red.shade400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: Text(
                    'Lupa Password',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              //BAGIAN ---OR----
              SizedBox(height: 30),
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

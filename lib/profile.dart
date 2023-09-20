// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            //header
            headerRow(),
            SizedBox(height: 5),
            //point dan myvoucher
            pointRow(),
            //list view pusat bantuan, bhs, pengaturan aplikasi,keluar, klaim point
            Expanded(
              child: ListView(
                children: [
                  Divider(color: Colors.grey),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        // top: BorderSide(),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        'Pusat Bantuan',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4a4d50),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        // top: BorderSide(),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        'Bahasa',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4a4d50),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        // top: BorderSide(),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        'Pengaturan Aplikasi',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4a4d50),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        // top: BorderSide(),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        'Keluar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4a4d50),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
                      onTap: () {
                        modalredeem(context);
                      },
                      title: Text(
                        'Klaim Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff4a4d50),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row pointRow() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Point",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                "Rp 33.822.990",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                "Klaim Point",
                style: TextStyle(fontSize: 15, color: Colors.orange),
              ),
            ],
          ),
        ),
        SizedBox(width: 100),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Point",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Text(
              "2",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Text(
              "Lihat Detail",
              style: TextStyle(fontSize: 15, color: Colors.orange),
            ),
          ],
        ),
      ],
    );
  }

  Row headerRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.help_center, size: 100),
        //nama
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Endho Yuliansyah",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Arabic Member',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 5),
                  Image.asset(
                    'assets/icon_arabica.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.info_outline,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset("assets/icon_edit.png", height: 30),
        ),
      ],
    );
  }

  AppBar appbar() {
    return AppBar(
      leading: Image.asset('assets/icon_akun.png', scale: 5),
      backgroundColor: Colors.white,
      elevation: 1,
      title: Image.asset(
        "assets/logo_isp.png",
        height: 30,
      ),
      centerTitle: true,
      actions: [
        Image.asset('assets/icon_search.png', scale: 5),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Image.asset("assets/icon_notifikasi.png", scale: 5),
        ),
      ],
    );
  }

  void modalredeem(contex) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Redeem Point",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'masukan code',
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
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Kartu Hadian dan Promosi Code",
                      style: TextStyle(fontSize: 15),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Term and Conditions",
                      style: TextStyle(fontSize: 15, color: Colors.orange),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 45),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffCCC8AA),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Claim Point',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

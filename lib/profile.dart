import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                        // top: BorderSide(),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: ListTile(
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
}

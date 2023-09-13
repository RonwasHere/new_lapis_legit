import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('header app barbuat app bar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text(
              'Kotak Masuk',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'Promo',
                    style: TextStyle(fontSize: 15, color: Color(0xff4a4d50)),
                  ),
                  subtitle: Text(
                    'Lihat semua promo disini',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text(
                    'Notifikasi',
                    style: TextStyle(fontSize: 15, color: Color(0xff4a4d50)),
                  ),
                  subtitle: Text(
                    'Lihat tagihan dan pengingat disini',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
        Navigator.pushNamed(context, '/search');
      }),
    );
  }
}

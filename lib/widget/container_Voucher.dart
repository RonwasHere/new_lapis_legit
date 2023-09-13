import 'package:flutter/material.dart';

class ContainerVoucher extends StatelessWidget {
  String title;
  String subtitle;
  String time;
  String price;
  ContainerVoucher({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.black),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              'assets/icon_diskon.png',
              width: 70,
            ),
          ),
          SizedBox(width: 60),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 20)),
                Text(subtitle, style: TextStyle(fontSize: 25)),
                Text(time, style: TextStyle(fontSize: 20, color: Color(0xffff5002))),
                SizedBox(height: 30),
                Text(
                  price,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

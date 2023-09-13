// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContainerMerchant extends StatelessWidget {
  String merchant;
  String title;
  String subtitle;
  String link;

  ContainerMerchant({
    required this.merchant,
    required this.title,
    required this.subtitle,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.black),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(Icons.camera, size: 70),
          ),
          SizedBox(width: 60),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(merchant, style: TextStyle(fontSize: 20)),
                Text(title, style: TextStyle(fontSize: 25)),
                Text(subtitle, style: TextStyle(fontSize: 20)),
                SizedBox(height: 30),
                Text(
                  link,
                  style: TextStyle(fontSize: 20, color: Color(0xffff5002)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

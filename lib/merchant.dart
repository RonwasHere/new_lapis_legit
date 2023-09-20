import 'package:flutter/material.dart';
import 'package:new_lapis_legit/voucher.dart';
import 'package:new_lapis_legit/widget/container_Merchant.dart';
import 'package:get/get.dart';
class MerchantPage extends StatelessWidget {
  const MerchantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('header app barbuat app bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Merchants',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Kunjungi Merchant yang kamu butuhkan ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 15),
            ContainerMerchant(
              merchant: 'Merchant',
              title: "INDRACO Store",
              subtitle: "Marketplace",
              link: "Kunjungi Sekarang",
            ),
            SizedBox(height: 15),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15),
            ContainerMerchant(
              merchant: 'Merchant',
              title: "Supresso",
              subtitle: "Cafe",
              link: "Kunjungi Sekarang",
            ),
            SizedBox(height: 15),
            ContainerMerchant(
              merchant: 'Merchant',
              title: "Pandan Garden",
              subtitle: "Cafe",
              link: "Kunjungi Sekarang",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.toNamed('/voucher');
            // Navigator.pushNamed(context, '/voucher');
          }),
    );
  }
}

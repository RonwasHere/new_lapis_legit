import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_lapis_legit/pages/loginn.dart';
import 'package:new_lapis_legit/widget/container_Voucher.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('header app barbuat app bar'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vouchers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '2 Voucher yang bisa kamu gunakan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            ContainerVoucher(
              title: "VOUCHER",
              subtitle: "potongan harga",
              time: "Berlaku sampai \n3 Desember 2023",
              price: "Rp 20.500",
            ),
            SizedBox(height: 10),
            ContainerVoucher(
              title: "VOUCHER",
              subtitle: "potongan ongkos kirim",
              time: "Berlaku sampai \n3 Desember 2023",
              price: "Rp 30.500",
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {},
                child: Text(
                  'Klaim Voucher',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.toNamed('/login');
            // Navigator.pushNamed(context, '/voucher');
          }),
    );
  }
}

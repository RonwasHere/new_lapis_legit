import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_lapis_legit/pages/loginn.dart';
import 'package:new_lapis_legit/pages/merchant.dart';
import 'package:new_lapis_legit/pages/search.dart';
import 'package:new_lapis_legit/pages/voucher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   //Proses Berubah Pakek GetX
      //   // '/': (context) => const ProfilePage(),
      //   '/': (context) => const MerchantPage(),
      //   '/search': (context) => const SearchPage(),
      //   '/merchant': (context) => const MerchantPage(),
      //   '/voucher': (context) => const VoucherPage(),
      // },

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MerchantPage()),
        GetPage(name: '/search', page: () => SearchPage()),
        GetPage(name: '/merchant', page: () => MerchantPage()),
        GetPage(name: '/voucher', page: () => VoucherPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        
      ],
    );
  }
}

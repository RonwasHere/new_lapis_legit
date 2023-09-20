import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_lapis_legit/loginn.dart';
import 'package:new_lapis_legit/merchant.dart';
import 'package:new_lapis_legit/notification.dart';
import 'package:new_lapis_legit/onboarding.dart';
import 'package:new_lapis_legit/profile.dart';
import 'package:new_lapis_legit/search.dart';
import 'package:new_lapis_legit/voucher.dart';

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
      routes: {
        // '/': (context) => const ProfilePage(),
        '/': (context) => const MerchantPage(),
        '/search': (context) => const SearchPage(),
        // '/merchant': (context) => const MerchantPage(),
        '/voucher': (context) => const VoucherPage(),
      },
    );
  }
}

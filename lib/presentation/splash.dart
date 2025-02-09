import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/router/router.dart';
import 'package:rule_to_slay/application/router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Giả sử GIF chạy trong 3 giây, sau đó chuyển trang.
    Future.delayed(const Duration(seconds: 5), () {
      router.go(Routes.mainScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          'assets/gifs/intro.gif',
          fit: BoxFit.cover,
          key: UniqueKey(), // Add a unique key to force reload
        ),
      ),
    );
  }
}

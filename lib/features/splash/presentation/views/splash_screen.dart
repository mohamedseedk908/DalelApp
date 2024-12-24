import 'package:dalel/core/utils/app_assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/navigations.dart';
import '../../../../core/utils/locale_keys.g.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.translate))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.onBairding3)
          ],
        ),
      ),
    );
  }
}
void delayedNavigate(context) {
  Future.delayed(
    const Duration(seconds: 3),
        () {
      customReplacementNavigate(context,"/OnboardingScreen");
    },
  );
}

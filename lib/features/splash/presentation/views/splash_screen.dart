import 'package:dalel/core/utils/app_text_styles.dart';
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
            Text(
              LocaleKeys.appName.tr(),
            )
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
      customNavigate(context,"/OnboardingScreen");
    },
  );
}

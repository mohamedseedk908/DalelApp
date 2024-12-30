import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/services_locator.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/navigations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    bool isOnBoardingVisited=getIt<CacheHelper>().getData(key: "isOnBoardingVisited")??false;
    if(isOnBoardingVisited==true){
      delayedNavigate(context,"/signUp");
    }else
      {
        delayedNavigate(context,"/OnboardingScreen");
      }
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
void delayedNavigate(context,path) {
  Future.delayed(
    const Duration(seconds: 3),
        () {
      customReplacementNavigate(context,path);
    },
  );
}

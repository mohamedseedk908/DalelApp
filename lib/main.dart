import 'package:dalel/core/utils/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/database/cache/cache_helper.dart';
import 'core/routers/app_router.dart';
import 'core/services/services_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServicesLocator();
  await getIt<CacheHelper>().init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [ Locale('en'),  Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en',),
        child: const Dalel()
    ),
  );
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
    );
  }
}


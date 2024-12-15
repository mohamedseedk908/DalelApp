import 'package:dalel/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'core/routers/app_router.dart';

void main() {
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}


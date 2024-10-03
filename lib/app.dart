
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp/singin_page.dart';

import 'home_page.dart';

class TPApp extends StatelessWidget {
  const TPApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff58B0F0)),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [
          GoRoute(path: '/',builder: (_, __) => HomePage(),),
          GoRoute(path: '/login',builder: (_, __) => SignInPage(),)
        ]
      ),
    );
  }
}
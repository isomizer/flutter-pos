import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/src/presentation/ui/theme/theme.dart';
import 'home/home_page.dart';
import 'login/login_page.dart';

class Application extends ConsumerWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      initialRoute: "/login",
      theme: defaultTheme,
      routes: {
        loginPageRoutes: (_) => const LoginPage(),
        homePageRoutes: (_) => const HomePage(),
      },
    );
  }
}

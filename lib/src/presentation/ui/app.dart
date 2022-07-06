import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/src/presentation/ui/theme/theme.dart';
import 'home/home_page.dart';

class Application extends ConsumerWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: defaultTheme,
      routes: {
        homePageRoutes: (_) => const HomePage(),
      },
    );
  }
}

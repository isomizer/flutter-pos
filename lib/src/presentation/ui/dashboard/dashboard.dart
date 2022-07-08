import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../responsive.dart';
import 'layout/app_layout.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: AppLayout(
          content: Row(
            children: [
              // Main Panel
              Expanded(
                flex: 5,
                child: Column(
                  children: const [],
                ),
              ),
              // Right Panel
              Visibility(
                visible: Responsive.isDesktop(context),
                child: Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Column(
                      children: const [],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

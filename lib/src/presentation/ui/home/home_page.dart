import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pos/src/presentation/ui/dashboard/dashboard.dart';

import '../../../../gen/colors.gen.dart';
import '../dashboard/layout/app_layout.dart';
import '../pos/sale.dart';
import '../responsive.dart';

const homePageRoutes = '/home';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4.0,
        backgroundColor: ColorName.white,
        elevation: 0.0,
      ),
      body: _createBody(context),
    );
    // return Container();
  }

  Widget _createBody(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        fixedSize: const Size(300, 100),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold));

    return Scaffold(
      body: SafeArea(
        child: AppLayout(
          content: Row(
            children: [
              // Main Panel
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: buttonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sale()),
                              );
                            },
                            child: const Text("ขายหน้าร้าน"))),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: buttonStyle,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Dashboard()),
                              );
                            },
                            child: const Text("จัดการข้อมูล"))),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
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

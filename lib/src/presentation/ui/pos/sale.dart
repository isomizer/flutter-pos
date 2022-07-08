import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/colors.gen.dart';

const homePageRoutes = '/sale';

class Sale extends HookConsumerWidget {
  const Sale({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 4.0,
        backgroundColor: ColorName.white,
        title: const Text(
          "Sale",
          style: TextStyle(color: ColorName.black),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _createBody(context),
    );
  }

  Widget _createBody(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Row(
              children: [
                Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 300,
                      color: ColorName.black,
                    )
                  ],
                ),
                Column(
                  children: const <Widget>[],
                ),
                Column(
                  children: const <Widget>[],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

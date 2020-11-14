// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// @dart = 2.8

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  testWidgets('Build method that returns context.widget throws FlutterError', (WidgetTester tester) async {
    // Regression test for: https://github.com/flutter/flutter/issues/25041
    await tester.pumpWidget(
      Builder(builder: (BuildContext context) => context.widget)
    );
    expect(tester.takeException(), isFlutterError);
  });
}

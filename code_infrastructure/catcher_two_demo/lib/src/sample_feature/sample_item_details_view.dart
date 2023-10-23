// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:catcher_two_demo/src/localization/l10n.dart';
import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CustomAppLocalizations.of(context).sampleItemDetailsViewTitle),
      ),
      body: Center(
        child: Text(CustomAppLocalizations.of(context).sampleItemDetailsViewDetail),
      ),
    );
  }
}

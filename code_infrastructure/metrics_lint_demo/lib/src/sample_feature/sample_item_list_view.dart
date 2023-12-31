// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:metrics_lint_demo/src/sample_feature/sample_item.dart';
import 'package:metrics_lint_demo/src/sample_feature/sample_item_details_view.dart';
import 'package:metrics_lint_demo/src/settings/settings_view.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3),],
  });

  static const routeName = '/';

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName,);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index,) {
          final item = items[index];

          return ListTile(
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: Text('SampleItem ${item.id}'),
            onTap: () {
              Navigator.restorablePushNamed(context, SampleItemDetailsView.routeName,);
            },
          );
        },
        itemCount: items.length,
        restorationId: 'sampleItemListView',
      ),
    );
  }
}

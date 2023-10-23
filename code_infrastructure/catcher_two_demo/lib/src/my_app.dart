// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:catcher_two_demo/src/localization/l10n.dart';
import 'package:catcher_two_demo/src/sample_feature/sample_item_details_view.dart';
import 'package:catcher_two_demo/src/sample_feature/sample_item_list_view.dart';
import 'package:catcher_two_demo/src/settings/settings_controller.dart';
import 'package:catcher_two_demo/src/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child,) {
        return MaterialApp(
          onGenerateRoute: (RouteSettings routeSettings) {
            
            return MaterialPageRoute<void>(
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName: return SettingsView(controller: settingsController); 
                  case SampleItemDetailsView.routeName: return const SampleItemDetailsView(); 
                  case SampleItemListView.routeName:  default: return const SampleItemListView();
                  }
                }, 
              settings: routeSettings,
            );
          }, 
          onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle, 
          theme: ThemeData(), 
          darkTheme: ThemeData.dark(), 
          themeMode: settingsController.themeMode, 
          localizationsDelegates: const [
            CustomAppLocalizations.delegate, 
            GlobalMaterialLocalizations.delegate, 
            GlobalWidgetsLocalizations.delegate, 
            GlobalCupertinoLocalizations.delegate,
          ], 
          supportedLocales: CustomAppLocalizations.delegate.supportedLocales, 
          restorationScopeId: 'app',
          );
      },
    );
  }
}

// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:device_preview/device_preview.dart';
import 'package:device_preview_demo/generated/l10n.dart';
import 'package:device_preview_demo/src/sample_feature/sample_item_details_view.dart';
import 'package:device_preview_demo/src/sample_feature/sample_item_list_view.dart';
import 'package:device_preview_demo/src/settings/settings_controller.dart';
import 'package:device_preview_demo/src/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:screenshot_modes/screenshot_modes.dart';

// Note: Usually we write the device preview wrapper using the same
//       navigation way as the full app.

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

late final SettingsController settingsController;


Future pushSampleItemListView(BuildContext context) async {
  Navigator.of(navigatorKey.currentContext!).push(DirectPageRouteBuilder(builder: (_) => const SampleItemListView()));
}

Future pushSettingsView(BuildContext context) async {
  Navigator.of(navigatorKey.currentContext!).push(DirectPageRouteBuilder(builder: (_) => SettingsView(controller: settingsController,)));
  // we use wait if we have animations in our page so wait until animation end then take screenshot.
}

Future pushSampleItemDetailsView(BuildContext context) async {
  Navigator.of(navigatorKey.currentContext!).push(DirectPageRouteBuilder(
      builder: (_) => const SampleItemDetailsView(
          ),),);
  // we use wait if we have animations in our page so wait until animation end then take screenshot.
}

class DevicePreviewAppWrapper extends StatelessWidget {


  final SettingsController settingsController;

  const DevicePreviewAppWrapper({super.key, required this.settingsController});



  @override
  Widget build(BuildContext context) {
    var locale2 = DevicePreview.locale(context);


    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
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
          locale: locale2, 
          localizationsDelegates: const [
            S.delegate, 
            GlobalMaterialLocalizations.delegate, 
            GlobalWidgetsLocalizations.delegate, 
            GlobalCupertinoLocalizations.delegate,
          ], 
          supportedLocales: [if (locale2 != null) locale2, const Locale('en', 'US')], 
          restorationScopeId: 'app',
        );
      },
    );
  }

}

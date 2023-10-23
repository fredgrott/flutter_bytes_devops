// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:catcher_2/catcher_2.dart';
import 'package:catcher_two_demo/src/app_logging.dart';
import 'package:catcher_two_demo/src/catcher_two_options.dart';
import 'package:catcher_two_demo/src/my_app.dart';
import 'package:catcher_two_demo/src/settings/settings_controller.dart';
import 'package:catcher_two_demo/src/settings/settings_service.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // init app logging
  AppLogging();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  

  Catcher2(
    rootWidget: MyApp(settingsController: settingsController), 
    releaseConfig: releaseOptions, 
    debugConfig: debugOptions,
    );
}

// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:catcher_two_demo/src/localization/l10n.dart';
import 'package:catcher_two_demo/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller,});

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CustomAppLocalizations.of(context).settingsViewTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: DropdownButton<ThemeMode>(items: [
          DropdownMenuItem(value: ThemeMode.system, child: Text(CustomAppLocalizations.of(context).settingsSystemTheme),), 
          DropdownMenuItem(value: ThemeMode.light, child: Text(CustomAppLocalizations.of(context).settingsLightTheme),), 
          DropdownMenuItem(value: ThemeMode.dark, child: Text(CustomAppLocalizations.of(context).settingsDarkTheme),),
        ], 
        value: controller.themeMode, 
        onChanged: controller.updateThemeMode,
       ),
      ),
    );
  }
}

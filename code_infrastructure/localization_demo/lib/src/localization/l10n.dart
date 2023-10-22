// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class CustomAppLocalizations {
  CustomAppLocalizations();

  static CustomAppLocalizations? _current;

  static CustomAppLocalizations get current {
    assert(_current != null,
        'No instance of CustomAppLocalizations was loaded. Try to initialize the CustomAppLocalizations delegate before accessing CustomAppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<CustomAppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = CustomAppLocalizations();
      CustomAppLocalizations._current = instance;

      return instance;
    });
  }

  static CustomAppLocalizations of(BuildContext context) {
    final instance = CustomAppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of CustomAppLocalizations present in the widget tree. Did you add CustomAppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static CustomAppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<CustomAppLocalizations>(
        context, CustomAppLocalizations);
  }

  /// `App`
  String get title {
    return Intl.message(
      'App',
      name: 'title',
      desc: 'Title for the App',
      args: [],
    );
  }

  /// `SampleItem {value}`
  String listTileTitle(Object value) {
    return Intl.message(
      'SampleItem $value',
      name: 'listTileTitle',
      desc: 'ListTile title',
      args: [value],
    );
  }

  /// `Sample Items`
  String get sampleItemListViewTitle {
    return Intl.message(
      'Sample Items',
      name: 'sampleItemListViewTitle',
      desc: 'Sample Item List View Title',
      args: [],
    );
  }

  /// `Item Details`
  String get sampleItemDetailsViewTitle {
    return Intl.message(
      'Item Details',
      name: 'sampleItemDetailsViewTitle',
      desc: 'Sample Item Detials view Title',
      args: [],
    );
  }

  /// `Settings`
  String get settingsViewTitle {
    return Intl.message(
      'Settings',
      name: 'settingsViewTitle',
      desc: 'Settings View Title',
      args: [],
    );
  }

  /// `System Theme`
  String get settingsSystemTheme {
    return Intl.message(
      'System Theme',
      name: 'settingsSystemTheme',
      desc: 'Settings System Theme',
      args: [],
    );
  }

  /// `Light Theme`
  String get settingsLightTheme {
    return Intl.message(
      'Light Theme',
      name: 'settingsLightTheme',
      desc: 'Settings Light Theme',
      args: [],
    );
  }

  /// `Dark Theme`
  String get settingsDarkTheme {
    return Intl.message(
      'Dark Theme',
      name: 'settingsDarkTheme',
      desc: 'Settings Dark Theme',
      args: [],
    );
  }

  /// `More Information Here`
  String get sampleItemDetailsViewDetail {
    return Intl.message(
      'More Information Here',
      name: 'sampleItemDetailsViewDetail',
      desc: 'Sample Item Detials View Detail',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<CustomAppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<CustomAppLocalizations> load(Locale locale) =>
      CustomAppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Strona główna`
  String get homePageTitle {
    return Intl.message(
      'Strona główna',
      name: 'homePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Kategorie`
  String get categoryPageTitle {
    return Intl.message(
      'Kategorie',
      name: 'categoryPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Książka`
  String get pdfPageTitle {
    return Intl.message(
      'Książka',
      name: 'pdfPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Twoje ulubione`
  String get yourFavorite {
    return Intl.message(
      'Twoje ulubione',
      name: 'yourFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Wystąpił błąd:`
  String get errorOccured {
    return Intl.message(
      'Wystąpił błąd:',
      name: 'errorOccured',
      desc: '',
      args: [],
    );
  }

  /// `Odśwież dane`
  String get refreshData {
    return Intl.message(
      'Odśwież dane',
      name: 'refreshData',
      desc: '',
      args: [],
    );
  }

  /// `Pozostałe`
  String get others {
    return Intl.message(
      'Pozostałe',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Błąd podczas pobierania danych o kolekcjach!`
  String get errorFetchCollection {
    return Intl.message(
      'Błąd podczas pobierania danych o kolekcjach!',
      name: 'errorFetchCollection',
      desc: '',
      args: [],
    );
  }

  /// `Błąd podczas pobierania danych o książkach!`
  String get errorFetchBooks {
    return Intl.message(
      'Błąd podczas pobierania danych o książkach!',
      name: 'errorFetchBooks',
      desc: '',
      args: [],
    );
  }

  /// `Szczegóły książki`
  String get bookDetail {
    return Intl.message(
      'Szczegóły książki',
      name: 'bookDetail',
      desc: '',
      args: [],
    );
  }

  /// `Fragment`
  String get fragment {
    return Intl.message(
      'Fragment',
      name: 'fragment',
      desc: '',
      args: [],
    );
  }

  /// `Czytaj HTML`
  String get readHtml {
    return Intl.message(
      'Czytaj HTML',
      name: 'readHtml',
      desc: '',
      args: [],
    );
  }

  /// `Czytaj PDF`
  String get readPdf {
    return Intl.message(
      'Czytaj PDF',
      name: 'readPdf',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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

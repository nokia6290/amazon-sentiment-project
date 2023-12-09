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

  /// `Chuck Norris Joke categories`
  String get dashboard_app_bar_title_categories {
    return Intl.message(
      'Chuck Norris Joke categories',
      name: 'dashboard_app_bar_title_categories',
      desc: '',
      args: [],
    );
  }

  /// `Joke by `
  String get joke_by_category_title {
    return Intl.message(
      'Joke by ',
      name: 'joke_by_category_title',
      desc: '',
      args: [],
    );
  }

  /// `No joke was found by this category`
  String get joke_by_category_not_found {
    return Intl.message(
      'No joke was found by this category',
      name: 'joke_by_category_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Chuck Norris search jokes`
  String get dashboard_app_bar_title_search {
    return Intl.message(
      'Chuck Norris search jokes',
      name: 'dashboard_app_bar_title_search',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get search_no_results {
    return Intl.message(
      'No results found',
      name: 'search_no_results',
      desc: '',
      args: [],
    );
  }

  /// `Enter a word`
  String get search_enter_word {
    return Intl.message(
      'Enter a word',
      name: 'search_enter_word',
      desc: '',
      args: [],
    );
  }

  /// `Analyze Amazon Review`
  String get search_search_title {
    return Intl.message(
      'Analyze Amazon Review',
      name: 'search_search_title',
      desc: '',
      args: [],
    );
  }

  /// `Minimum 3 characters required`
  String get search_minimum_words {
    return Intl.message(
      'Minimum 3 characters required',
      name: 'search_minimum_words',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get generic_favorites {
    return Intl.message(
      'Favorites',
      name: 'generic_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Favorite jokes`
  String get dashboard_app_bar_title_favorites {
    return Intl.message(
      'Favorite jokes',
      name: 'dashboard_app_bar_title_favorites',
      desc: '',
      args: [],
    );
  }

  /// `No favorite jokes yet!`
  String get favorites_empty_list {
    return Intl.message(
      'No favorite jokes yet!',
      name: 'favorites_empty_list',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get generic_error {
    return Intl.message(
      'Error',
      name: 'generic_error',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get generic_search {
    return Intl.message(
      'Search',
      name: 'generic_search',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get generic_categories {
    return Intl.message(
      'Categories',
      name: 'generic_categories',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
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

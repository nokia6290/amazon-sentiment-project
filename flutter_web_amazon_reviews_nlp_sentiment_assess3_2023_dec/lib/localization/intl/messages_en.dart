// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "dashboard_app_bar_title_categories":
            MessageLookupByLibrary.simpleMessage(
                "Chuck Norris Joke categories"),
        "dashboard_app_bar_title_favorites":
            MessageLookupByLibrary.simpleMessage("Favorite jokes"),
        "dashboard_app_bar_title_search":
            MessageLookupByLibrary.simpleMessage("Chuck Norris search jokes"),
        "favorites_empty_list":
            MessageLookupByLibrary.simpleMessage("No favorite jokes yet!"),
        "generic_categories":
            MessageLookupByLibrary.simpleMessage("Categories"),
        "generic_error": MessageLookupByLibrary.simpleMessage("Error"),
        "generic_favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "generic_search": MessageLookupByLibrary.simpleMessage("Search"),
        "joke_by_category_not_found": MessageLookupByLibrary.simpleMessage(
            "No joke was found by this category"),
        "joke_by_category_title":
            MessageLookupByLibrary.simpleMessage("Joke by "),
        "search_enter_word":
            MessageLookupByLibrary.simpleMessage("Enter a word"),
        "search_minimum_words": MessageLookupByLibrary.simpleMessage(
            "Minimum 3 characters required"),
        "search_no_results":
            MessageLookupByLibrary.simpleMessage("No results found"),
        "search_search_title":
            MessageLookupByLibrary.simpleMessage("Analyze Amazon Review")
      };
}

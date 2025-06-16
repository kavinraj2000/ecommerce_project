// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class ListConstants {
  const ListConstants();

  final String LIST_TYPE_TABLE = "table";
  final String LIST_TYPE_TASK = "task";

  final Map<String, String> LIST_VIEW_MODES = const {
    // 'Select Display Modes for the List': '',
    "Table": "table",
    "Card": "card",
  };

  final Map<String, String> LIST_ACTIONS = const {
    "edit": "edit",
    "read": "read",
  };
}

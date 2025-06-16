// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class ViewConstants {
  const ViewConstants();

  final String PAGE = "page";
  final String LAYOUT = "layout";

  final Map<String, String> VALUE_TYPES = const {
    "": "selectvaluetype",
    "Table": "table",
    "Text": "text",
    "Formatted": "formatted",
    "Algorithm": "algorithm",
  };

  final Map<String, String> ALGORITHM_MAP_TYPES = const {
    "": "selectvaluetype",
    "Constant": "constant",
    "Table": "table",
  };
}

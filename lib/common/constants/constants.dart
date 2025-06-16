// ignore_for_file: constant_identifier_names

import 'package:ecommerce/common/constants/list_constants.dart';

import 'app_constants.dart';
import 'api_constants.dart';
import 'form_constants.dart';
import 'localstore_constants.dart';
import 'view_constants.dart';

class Constants {
  // App-related constants
  static const app = AppConstants();

  // API-related constants
  static const api = ApiConstants();

  // List-related constants
  static const list = ListConstants();

  // Form-related constants
  static const form = FormConstants();

  // View-related constants
  static const view = ViewConstants();

  // LocalDB-related constants
  static const store = LocalStoreConstants();

  static const String CACHE_STORE = "data_cache_store";
  static const REFERENCES_DB = "references.db";
  static const TRANSACTIONS_DB = "transactions.db";
  static const DATACACHE_DB = "datacache.db";
  static const ANALYTICS_DB = "analytics.db";

  //Constants used in Switch case
  static const TEXTFIELD = "text";
  static const DROPDOWN = "dropdown";
  static const MULTI_DROPDOWN = "multidropdown";
  static const CHECKBOX = "checkbox";
  static const CHECKBOX_GROUP = "checkboxgroup";
  static const CHOICE_CHIP = "choicechip";
  static const FILTER_CHIP = "filterchip";
  static const COLOR_PICKER = "colorpicker";
  static const DATE_PICKER = "date";
  static const DATETIME_PICKER = "datetime";
  static const DATERANGE_PICKER = "daterange";
  static const FILE_PICKER = "filepicker";
  static const IMAGE_PICKER = "imagepicker";
  static const RADIO_GROUP = "radiogroup";
  static const RANGE_SLIDER = "rangeslider";
  static const RATING = "rating";
  static const SIGNATUREPAD = "signaturepad";
  static const SLIDER = "slider";
  static const SWITCH = "switch";
  static const TOUCHSPIN = "touchspin";
  static const TYPEAHEAD = "typeahead";
  static const CALCULATED_FIELD = "calculated";
  static const DIALOG_FIELD = "dialog";

  static const DIALOG_FORM_LABELS = "Labels";
  static const DIALOG_FORM_MESSAGE_TEMPLATE = "Message Template";
  static const DIALOG_FORM_HINT_TEXT = "Hint Text";
  static const DIALOG_FORM_OPTIONS = "Options";
  static const DIALOG_FORM_VALIDATIONS = "Validations";
  static const DIALOG_FORM_DISPLAY_RULES = "Display Rules";
  static const DIALOG_FORM_DESCRIPTION = "Description";
  static const DIALOG_FORM_ELIGIBILITY = "Eligibility";
  static const DIALOG_FORM_FORMJSON = "formjson";
  static const DIALOG_FORM_LISTJSON = "listjson";

  static const DISPLAY_MODE_STEPPER_HORIZONTAL = "stepper_horizontal";
  static const DISPLAY_MODE_STEPPER_VERTICAL = "stepper_vertical";
  static const DISPLAY_MODE_TABBED = "tabbed";
  static const DISPLAY_MODE_SINGLE = "single";
  static const DISPLAY_MODE_MODAL = "modal";

  static const String LIST_VIEW_TABLE = "table";
  static const String LIST_VIEW_CARD = "card";
  static const String THEME_MODE = "light";
}

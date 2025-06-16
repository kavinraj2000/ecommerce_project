// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class FormConstants {
  const FormConstants();

  final String ADD_FORM_TYPE = "add";
  final String EDIT_FORM_TYPE = "edit";
  final String LIST_FORM_TYPE = "list";

  final String FIELD_TYPE = "field";
  final String GROUP_TYPE = "group";
  final String MODAL_TYPE = "modal";

  final String DISPLAY_MODE_STEPPER_HORIZONTAL = "stepper_horizontal";
  final String DISPLAY_MODE_STEPPER_VERTICAL = "stepper_vertical";
  final String DISPLAY_MODE_TABBED = "tabbed";
  final String DISPLAY_MODE_SINGLE = "single";
  final String DISPLAY_MODE_MODAL = "modal";

  final Map<String, String> FORMTYPES = const {
    'Select Form Type': '',
    "Stepper Horizontal": "stepper_horizontal",
    "Stepper Vertical": "stepper_vertical",
    "Tabbed": "tabbed",
  };

  final String DIALOG_FORM_LABELS = "Labels";
  final String DIALOG_FORM_MESSAGE_TEMPLATE = "Message Template";
  final String DIALOG_FORM_HINT_TEXT = "Hint Text";
  final String DIALOG_FORM_OPTIONS = "Options";
  final String DIALOG_FORM_VALIDATIONS = "Validations";
  final String DIALOG_FORM_DISPLAY_RULES = "Display Rules";
  final String DIALOG_FORM_DESCRIPTION = "Description";
  final String DIALOG_FORM_ELIGIBILITY = "Eligibility";
  final String DIALOG_FORM_FORMJSON = "Formjson";
  final String DIALOG_FORM_LISTJSON = "Listjson";

  final Map<String, String> DIALOG_FIELD_TYPES = const {
    'Labels': 'labels',
    'Description': 'description',
    'Eligibility': 'eligibility',
  };

  //Range in No. of Months
  final Map<String, String> DATE_RANGE = const {
    'Today - 250 Years': '-3000',
    'Today - 200 Years': '-2400',
    'Today - 150 Years': '-1800',
    'Today - 100 Years': '-1200',
    'Today - 50 Years': '-600',
    'Today - 6 Months': '-6',
    'Today - 3 Months': '-3',
    'Today - 1 Month': '-1',
    'Today': '0',
    'Today + 1 Month': '1',
    'Today + 3 Months': '3',
    'Today + 6 Months': '6',
    'Today + 50 Years': '600',
    'Today + 100 Years': '1200',
    'Today + 150 Years': '1800',
    'Today + 200 Years': '2400',
    'Today + 250 Years': '3000',
  };

  final int MIMIMUM_TABLE_COLUMNS = 1;
  final int FORMGROUP_MAX_FIELDS = 7;

  final String DISPLAY_RULE_FORM_TYPE = "form";
  final String DISPLAY_RULE_USER_TYPE = "user";

  final Map<String, String> OPTION_TYPES = const {'By Reference': 'reference', 'Manual': 'manual'};
  final Map<String, String> TABLE_TYPES = const {'': 'Select a table type', 'Reference': 'reference', 'Transaction': 'transaction'};

  final String TEXTFIELD = "text";
  final String DROPDOWN = "dropdown";
  final String MULTI_DROPDOWN = "multidropdown";
  final String CHECKBOX = "checkbox";
  final String CHECKBOX_GROUP = "checkboxgroup";
  final String CHOICE_CHIP = "choicechip";
  final String FILTER_CHIP = "filterchip";

  //final String COLOR_PICKER = "colorpicker";
  final String DATE_PICKER = "date";
  final String DATETIME_PICKER = "datetime";
  final String DATERANGE_PICKER = "daterange";

  //final String FILE_PICKER = "filepicker";
  //final String IMAGE_PICKER = "imagepicker";
  final String RADIO_GROUP = "radiogroup";
  final String RANGE_SLIDER = "rangeslider";

  //final String RATING = "rating";
  //final String SIGNATUREPAD = "signaturepad";
  final String SLIDER = "slider";
  final String SWITCH = "switch";

  //final String TOUCHSPIN = "touchspin";
  final String TYPEAHEAD = "typeahead";

  //final String CALCULATED_FIELD = "calculated";
  final String DIALOG_FIELD = "dialog";

  final Map<String, String> INPUT_TYPES = const {
    "TextField": "text",
    "Single-Select Dropdown": "dropdown",
    "Multi-Select Dropdown": "multidropdown",
    "Checkbox": "checkbox",
    "Checkbox Group": "checkboxgroup",
    "Choice Chip": "choicechip",
    "Filter Chip": "filterchip",
    //"Color Picker": "colorpicker",
    "Date Picker": "date",
    "DateTime Picker": "datetime",
    "DateRange Picker": "daterange",
    "DateTimeRange Picker": "datetimerange",
    //"File Picker": "filepicker",
    //"Image Picker": "imagepicker",
    "Radio Group": "radiogroup",
    "Range Slider": "rangeslider",
    //"Rating": "rating",
    //"Signature Pad": "signaturepad",
    "Slider": "slider",
    "Switch": "switch",
    //"Touchspin": "touchspin",
    //"Typeahead": "typeahead",
    //"Calculated Field": "calculated",
    "Pop-up": "dialog"
  };

  final Map<String, Map> DATA_INPUT_TYPES = const {
    'text': {
      "TextField": "text",
      // "Single-Select Dropdown": "dropdown",
      // "Checkbox": "checkbox",
      // "Choice Chip": "choicechip",
      // "Radio Group": "radiogroup"
    },
    'boolean': {
      "Switch": "switch",
    },
    'double': {
      "TextField": "text",
      "Slider": "slider",
    },
    'int': {
      "TextField": "text",
    },
    'bigint': {
      "TextField": "text",
    },
    'date': {
      "Date Picker": "date",
    },
    'timestamp': {
      "DateTime Picker": "datetime",
    },
    'list<uuid>': {
      "Multi-Select Dropdown": "multidropdown",
      "Checkbox Group": "checkboxgroup",
      "Filter Chip": "filterchip",
    },
    // 'list<text>': {
    //   "Multi-Select Dropdown": "multidropdown",
    //   "Checkbox Group": "checkboxgroup",
    //   "Filter Chip": "filterchip",
    //   "Pop-up": "dialog"
    // },
    'list<double>': {
      "Range Slider": "rangeslider",
    },
    'list<date>': {
      "DateRange Picker": "daterange",
    },
    'list<timestamp>': {
      "DateTimeRange Picker": "datetimerange",
    },
    'map<text,text>': {
      "Pop-up": "dialog",
    },
    'uuid': {
      "Single-Select Dropdown": "dropdown",
      "Checkbox": "checkbox",
      "Choice Chip": "choicechip",
      "Radio Group": "radiogroup",
    }
  };

  final Map<String, String> TYPES = const {
    'Nominal': 'nominal',
    'Ordinal': 'ordinal',
    'Discrete': 'discrete',
    'Continuous': 'continuous',
    'Categorical': 'categorical',
    'Binary': 'binary',
  };

  final Map<String, String> DATA_CATEGORY = const {
    'PersonalInfo': 'PersonalInfo',
    'Demographic': 'Demographic',
    'SocioEconomic': 'SocioEconomic',
    'MedicalHistory': 'MedicalHistory',
    'WelfareScheme': 'WelfareScheme',
  };

  final Map<String, String> DATA_TYPES = const {
    'TEXT': 'text',
    'BOOLEAN': 'boolean',
    'DOUBLE': 'double',
    'INT': 'int',
    'BIGINT': 'bigint',
    'DATE': 'date',
    'TIMESTAMP': 'timestamp',
    'LIST<UUID>': 'list<uuid>',
    'LIST<MAP> or LIST<STRING>': 'list<text>',
    'LIST<INT>': 'list<int>',
    'LIST<DOUBLE>': 'list<double>',
    'LIST<DATE>': 'list<date>',
    'LIST<DATETIME>': 'list<timestamp>',
    'MAP<STRING, STRING>': 'map<text,text>',
    'UUID': 'uuid',
  };

  final Map<String, String> ELIGIBILITY_TYPE = const {
    '': 'Select Eligibilty Type',
    'Age': 'age',
    'Gender': 'gender',
    "Occupation": "Occupation",
    "Income": "income",
  };

  final String DEFAULT_KEYBOARD_TYPE = 'text';

  final Map<String, String> KEYBOARD_TYPES = const {
    'datetime': 'datetime',
    'emailAddress': 'emailAddress',
    'multiline': 'multiline',
    'name': 'name',
    'number': 'number',
    'phone': 'phone',
    // 'streetAddress': 'streetAddress',
    'text': 'text',
    'url': 'url',
    'visiblePassword': 'visiblePassword'
  };

  final Map<String, String> LOGICAL_CONDITIONS = const {
    '': 'Select Rule Conditions',
    'Or': 'or',
    'And': 'and',
    'Not': 'not',
  };

  final Map<String, String> RULE_OPERATOR = const {
    '': 'Select Operator',
    'Equal To': 'equal_to',
    'Not Equal To': 'not_equal_to',
    'Greater Than': 'greater_than',
    'Greater Than Or Equal To': 'greater_than_or_equal_to',
    'Less Than': 'less_than',
    'Less Than Or Equal To': 'less_than_or_equal_to',
    'Exists': 'exists',
    'Not Exists': 'not_exists',
  };

  final Map<String, String> RULE_ACTIONS = const {
    '': 'Select Action',
    'Enabled': 'enabled',
    'Visible': 'visible',
  };

  final Map<String, String> RULE_ACTION_VALUES = const {
    '': 'Select Action',
    'True': 'true',
    'False': 'false',
  };

  final Map<String, String> VALIDATION_TYPES = const {
    '': 'Select Validation Type',
    'Mandatory': 'mandatory',
    'Pattern': 'regex',
    // 'Email': 'email',
    // 'Phone': 'phone',
    // 'Date': 'date',
    'Date Past': 'datePast',
    'Date Future': 'dateFuture',
    // 'File Extension': 'fileExtension',
    // 'File Size': 'fileSize',
    // 'Password': 'password',
    // 'Longitude': 'longitude',
    // 'Latitude': 'latitude',
    // 'Url': 'url',
    // 'Positive Number': 'positiveNumber',
    // 'Integer': 'integer',
    // 'Numeric': 'numeric',
    // 'Range': 'range',
    // 'Regular Expression': 'regex',
    // 'First Name': 'firstname',
    // 'Last Name': 'lastname',
    // 'Alphabetic': 'alphabetic',
    // 'Max word count': 'maxwordcount',
  };

  final Map<String, String> TASK_TYPE = const {
    'Create /Update Form': 'form',
    'Verify Form': 'verify',
    'Approval Form': 'approve',
    'Summary': 'read',
    'DataList': 'list',
  };

  final Map<String, String> INPUT_TYPE = const {
    'Go Back': 'goback',
    'Task': 'task',
    // 'Algorithm': 'algorithm',
  };

  static const Map<String, int> WORKITEM_ACCESS_LEVELS = {
    'Level 1': 1,
    'Level 2': 2,
    'Level 3': 3,
    'Level 4': 4,
    'Level 5': 5,
  };

  final Map<String, String> COMMUNICATION_MODE = const {
    'SMS': 'sms',
    'Email': 'email',
    'WhatsApp': 'whatsapp',
    'In App Notifications': 'inappnotification',
    'Push Notification': 'pushnotification'
  };

  final Map<String, String> COMMUNICATION_DESIGNATION = const {
    'Officer': 'officer',
    'Manager': 'manager',
    'Director': 'director',
  };

  final Map<String, String> COMMUNICATION_PRIORITYLEVEL = const {
    'High': 'high',
    'Medium': 'medium',
    'Low': 'low',
  };

  final Map<String, String> ALGOVARIABLETYPE = const {
    '': 'Select Variable Type',
    'Constant': 'constant',
    'Table Field': 'tablefield',
    'Formula': 'formula',
  };

  final Map<String, String> ALGOCONDITIONTYPE = const {
    '': 'Select Condition Type',
    'Step': 'step',
    'Outcome': 'outcome',
  };

  final Map<String, String> ALGOACTIONFIELDTYPE = const {
    '': 'Select Field Type',
    'Field': 'field',
    'Expression result': 'expressionResult',
    'Manual Entry': 'manualEntry',
  };

  final Map<String, String> ALGOACTIONTYPE = const {
    '': 'Select Action Type',
    'Formatting': 'formatting',
    'Popup': 'popup',
    'Task': 'task',
  };

  final Map<String, String> ALGOPOPUPACTIONTYPE = const {
    '': 'Select Popup Action Type',
    'Popup': 'popup',
    'Task': 'task',
    'Do Nothing': 'doNothing',
  };

  final Map<String, String> INDIVITUALFAMILYSELECTION = const {
    '': 'Select Family',
    'Grandparents': 'grandparents',
    'Parents': 'parents',
    'Children': 'children',
  };

  final String INTRO_HAS_CHILD =
      "Tables having dependencies may be chosen as \"Yes\".\n\nStandalone tables that have no link with other masters may be chosen \"No\"";

  final String INTRO_DATA_TYPE =
      "Text - Alphanumeric,\nBoolean - Yes/No,\nDouble - 2 Decimal number,\nINT - Whole number,\nBIGINT - Large numbers,\nDate - Date value,\nTimestamp - Time value,\nDateTime - Date and time value,\nUUID - Unique identifier with 36 characters";

  final String INTRO_DISPLAY_ORDER = "To order the form fields";

  final String INTRO_FLEX = "Defines how much space each field takes relative to others. ";

  final String INTRO_MAX_LINES = "Number of lines to be shown for this field in view/form entry pages";

  final String INTRO_REQUIRED = "This field is required to add records in the table.";

  final String INTRO_EDITABLE =
      "If enabled, values entered once may not be modified. Either to remove or create a new record with a different value.";

  final String INTRO_VIEW_ONLY = "This field will be viewed and not editable by users in view builder";

  final String INTRO_BOLD = "This field will be viewed in Bold letters in view builder";

  final String INTRO_ITALICS = "This field will be viewed in Italics letters in view builder";

  final String INTRO_SUPPLEMENTRY_VALUES =
      "Variables may be additionally mentioned with options like Not willing to participate, Not willing to disclose, Not to share with third-party, Not applicable, Not stated/inadequately described, Invalid. \n\n If a variable needs supplementary fields with these options, please mention \"Yes.\" Most of the personal identifiers and research survey variables will require supplementary fields. Form builder will automatically add this attribute in the table.";

  final String INTRO_SET_VALIDATION = "Please set the maximum possible validations for this field. This will minimise the data entry errors.";

  final String INTRO_SEARCHABLE = "Please select \"Yes\" to all fields which will be used to identify a record during data collection and analysis";

  final String INTRO_TYPE =
      " - Nominal is text information like names without any grouping\n\n - Categorical is text information grouped by some attribute\n\n - Binary is data having only options like Yes/No, 0/1, True/False\n\n - Ordinal is data having ascending or descending order like 1,2,3,... Small, Medium, Large\n\n - Discrete is data occur in whole numbers like 1,2,3 persons having fever\n\n - Continuous is data having decimals";

  final String INTRO_DATA_FORMAT =
      "Formats may be shown like spreadsheets [Eg. Numbers ##,###.00, Date dd/mm/yyyy\n\nIf possible expression builder may be used similar to excel/spreadsheet";

  final String INTRO_USER_FOR =
      "Please enter the various uses of this field/column added in this table which will help the analytics team to build algorithms";

  final String INTRO_SOURCE_DEFINITION =
      "Please enter the reference definitions as is from the textbooks, publications and guidelines. Multiple definitions may be added in this field Eg AHA, WHO, ICMR, CDC for the same field";

  final String INTRO_SOURCE_FIELD = "Please enter the sources for collecting/populating this field";
}

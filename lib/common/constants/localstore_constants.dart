// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class LocalStoreConstants {
  const LocalStoreConstants();

  final String REFERENCES_DB = "references.db";
  final String TRANSACTIONS_DB = "transactions.db";
  final String DATACACHE_DB = "datacache.db";
  final String ANALYTICS_DB = "analytics.db";

  final String INITIALIZED = "INITIALIZED";
  final String PERMISSION = "PERMISSION";
  final String TRUE = 'true';
  final String FALSE = 'false';

  //References Stores
  final String PLATFORM_CONFIG_STORE = 'platformconfig';
  final String COMMUNICATION_CONFIG_STORE = 'communicationsconfig';
  final String DOMAIN_CATEGORY_STORE = 'domaincategory';
  final String TABLE_MASTER_STORE = 'tablemaster';
  final String COLUMN_MASTER_STORE = 'columnmaster';
  final String USERROLE_STORE = 'userrole';
  final String USERROLEGROUP_STORE = 'userrolegroup';
  final String DESIGNATION_STORE = 'designation';
  final String ROLE_TASK_STORE = 'roletask';

  //Transaction Stores
  final String APP_STORE = "app";
  final String AUTH_STORE = "auth";
  final String USER_PIN = "user_pin";
  final String AUTH_TOKEN = "authToken";
  final String USER_ID = "userId";
  final String USER_LANGUAGE = 'user_language';

  final String TASK_JSON = "taskjson";

  // final String FORM_EDIT_DATA = "form_edit_data";
  // final String FORM_RENDERER_STEPPER = "form_renderer_stepper";
}

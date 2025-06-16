// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class ApiConstants {
  const ApiConstants();

  final String API_BASE_URL =
      "https://cgr-server-dev-938751381200.asia-south1.run.app/v1_0/";
  // final String API_BASE_URL = "https://fast-api-sirius-stg-543066148200.asia-south1.run.app/";

  final String REQUEST_NAME = "requestname";
  final String DATA = "data";

  final String LIST_TASK_TYPE = "list";
  final String ADD_TASK_TYPE = "add";
  final String VIEW_TASK_TYPE = "view";
  final String EDIT_TASK_TYPE = "edit";
  final String READ_TASK_TYPE = "read";

  final String SEND_OTP_API = "auth/sendotp";
  final String VALIDATE_OTP_API = "auth/validateotp";

  final String PLATFORM_CONFIG_TABLE = "platformconfig";

  // final List<String> INIT_APP_DATA = const [
  //   "platformconfig",
  //   "communicationconfig",
  //   "domaincategory",
  //   "tablemaster",
  //   // "columnmaster",
  //   "userrole",
  //   "userrolegroup",
  //   "userroleworkitemmap",
  //   "designation",
  //   "taskmaster",
  // ];

  //Homepage Data
  final String USER_HOME_LIST = "home/user/list";
  final String USER_HOME_READ = "home/user/read";

  //Todo: Should be synced as part of Appconfig and read from localDB
  //**************API Map********************
  final Map<String, String> API_MAP = const {
    "taskmaster_add": "task/add",
    "taskmaster_edit": "task/edit",
    "taskmaster_read": "task/read",
    "taskmaster_list": "task/list",
    "taskevent_read": "task/event/read",
    "taskevent_list": "task/event/list",
    "taskevent_list_user": "task/event/list/foruser",
    "users_add": "user/add",
    "users_edit": "user/edit",
    "users_read": "user/read",
    "users_list": "user/list",
    "userrole_add": "user/role/add",
    "userrole_edit": "user/role/edit",
    "userrole_read": "user/role/read",
    "userrole_list": "user/role/list",
    "userrolegroup_add": "user/rolegroup/add",
    "userrolegroup_edit": "user/rolegroup/edit",
    "userrolegroup_read": "user/rolegroup/read",
    "userrolegroup_list": "user/rolegroup/list",
    "userroleworkitemmap_add": "user/role/workitem/add",
    "userroleworkitemmap_edit": "user/role/workitem/edit",
    "userroleworkitemmap_read": "user/role/workitem/read",
    "userroleworkitemmap_list": "user/role/workitem/list",
    "userrolegroupalgorithmmap_add": "user/rolegroup/algorithm/add",
    "userrolegroupalgorithmmap_edit": "user/rolegroup/algorithm/edit",
    "userrolegroupalgorithmmap_read": "user/rolegroup/algorithm/read",
    "userrolegroupalgorithmmap_list": "user/rolegroup/algorithm/list",
    "designation_list": "user/designation/list",
    "designation_add": "user/designation/add",
    "designation_edit": "user/designation/edit",
    "designation_read": "user/designation/read",
    "tablemaster_add": "schema/table/add",
    "tablemaster_read": "schema/table/read",
    "tablemaster_edit": "schema/table/edit",
    "tablemaster_list": "schema/table/list",
    "columnmaster_add": "schema/column/add",
    "columnmaster_read": "schema/column/read",
    "columnmaster_edit": "schema/column/edit",
    "columnmaster_list": "schema/column/list",
    "domaincategory_add": "schema/domaincategory/add",
    "domaincategory_read": "schema/domaincategory/read",
    "domaincategory_edit": "schema/domaincategory/edit",
    "domaincategory_list": "schema/domaincategory/list",
    "data_add": "common/data/add",
    "data_edit": "common/data/edit",
    "data_read": "common/data/read",
    "data_list": "common/data/list",
    "task_data_add": "common/multidata/add",
    "task_data_edit": "common/multidata/edit",
    "table_data_search": "common/data/search",
    "platformconfig_list": "config/platform/list",
    "platformconfig_add": "config/platform/add",
    "platformconfig_edit": "config/platform/edit",
    "platformconfig_read": "config/platform/read",
    "communicationconfig_list": "config/communication/list",
    "communicationconfig_add": "config/communication/add",
    "communicationconfig_edit": "config/communication/edit",
    "communicationconfig_read": "config/communication/read",
    "algorithmmaster_add": "config/algorithm/add",
    "algorithmmaster_edit": "config/algorithm/edit",
    "algorithmmaster_read": "config/algorithm/read",
    "algorithmmaster_list": "config/algorithm/list",
    "dashboard_data": "dashboard/kpi_table/data",
    "data_delete": "superadmin/data/delete",
  };
}

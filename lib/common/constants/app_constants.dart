// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class AppConstants {
  const AppConstants();

  final String APP_NAME = "admin";
  final String APP_TITLE = "CGR Admin";

  final String CONFIG_IS_ONLINE = "isOnline";
  final String CONFIG_HOME_PAGE = "home_page";
  final String FONT_POPPINS = "Poppins";

  final Map<String, String> LANGUAGES = const {
    'English': 'en',
    'Tamil': 'ta',
  };

  final Map<String, String> APP_PERMISSIONS = const {
    'Camera': 'camera',
    'Location': 'location',
    'File Storage': 'filestorage',
  };

  final List<String> MEMORY_CACHE_LIST = const [
    "domaincategory",
    "tablemaster",
    "userrole",
    "taskmaster",
  ];
}

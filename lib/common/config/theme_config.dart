// ignore_for_file: constant_identifier_names, non_constant_identifier_names
class ThemeConfig {
  const ThemeConfig();

  final String DEFAULT_THEME = "theme_blue";

  // Theme
  final String LIGHT = "light";
  final String DARK = "dark";
  final String SYSTEM = "system";
  final String BLUE_THEME = "blue_theme";
  final String GREEN_THEME = "green_theme";
  final String ORANGE_THEME = "orange_theme";

  final Map<String, String> THEME_MODES = const {
    'System': 'system',
    'Light': 'light',
    'Dark': 'dark',
  };

  final Map<String, String> THEME_COLORS = const {
    'Blue': 'blue_theme',
    'Green': 'green_theme',
    'Orange': 'orange_theme',
  };

  final Map<String, String> APP_LOGO = const {
    'light': 'assets/images/logo_light.png',
    'dark': 'assets/images/logo_dark.png',
  };

  final Map<String, dynamic> THEME_JSON = const {
    "blue_theme": {
      "light": {
        "useMaterial3": true,
        "seedColor": "#0081C9",
        "brightness": "light",
      },
      "dark": {
        "useMaterial3": true,
        "seedColor": "#0081C9",
        "brightness": "dark",
      },
    },
  };
}

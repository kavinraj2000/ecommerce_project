// ignore_for_file: non_constant_identifier_names

class NavigationConfig {
  const NavigationConfig();
  final List<Map<String, dynamic>> NAVIGATION_CONFIG = const [
    {
      "id": "home",
      "name": "Tasks",
      "icon": "ic_task",
      "selected": true,
      "url": "home",
      "params": {},
    },
    {
      "id": "helpdesk",
      "name": "Helpdesk",
      "icon": "ic_help_desk",
      "url": "helpdesk",
      "params": {},
    },
    {
      "id": "search",
      "name": "Search",
      "icon": "ic_search",
      "url": "search",
      "params": {},
    },
    {
      "id": "menu",
      "name": "Menu",
      "icon": "ic_menu",
      "url": "menu",
      "params": {},
    }
  ];
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

IconData getIcon(String input) {
  switch (input) {
    case 'home':
      return Icons.home;
    case 'profile':
      return Icons.person;
    case 'help':
      return Icons.headset_mic;
    case 'learn':
      return FontAwesomeIcons.bookOpenReader;
    case 'dashboard':
      return FontAwesomeIcons.gaugeHigh;
    case 'admin':
      return FontAwesomeIcons.userGear;
    case 'citizen':
      return FontAwesomeIcons.userGroup;
    case 'department':
      return FontAwesomeIcons.building;
    case 'master':
      return FontAwesomeIcons.chessKing;
    case 'certificate':
      return FontAwesomeIcons.certificate;
    case 'notification':
      return Icons.notifications;
    case 'menu':
      return Icons.menu;
    case 'add':
      return Icons.add;
    case 'settings':
      return Icons.settings;
    case 'search':
      return FontAwesomeIcons.magnifyingGlass;
    case 'account':
      return Icons.account_circle;
    case 'user':
      return FontAwesomeIcons.user;
    case 'employees':
      return FontAwesomeIcons.users;
    case 'address':
      return Icons.account_tree;

    //Font Awsome
    case 'roles':
      return FontAwesomeIcons.userShield;
    case "family_management":
      return FontAwesomeIcons.houseUser;
    case "citizen_management":
      return FontAwesomeIcons.users;
    case "health_screening":
      return FontAwesomeIcons.stethoscope;
    case "referral_management":
      return FontAwesomeIcons.solidPaperPlane;
    case "visit_management":
      return FontAwesomeIcons.calendarCheck;
    case "user_management":
      return FontAwesomeIcons.userGear;
    case "hierarchy_management":
      return FontAwesomeIcons.sitemap;
    case "workgroup_management":
      return FontAwesomeIcons.usersGear;
    default:
      return Icons.image_outlined;
  }
}

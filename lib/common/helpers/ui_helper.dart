import 'package:ecommerce/common/config/config.dart';
import 'package:ecommerce/common/constants/constants.dart';
import 'package:ecommerce/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:responsive_framework/responsive_framework.dart';

class UiHelper {
  final log = Logger();

  UiHelper();

  Color getColorFromMap(String key, String mode) {
    Color color;
    if (mode == "light") {
      color = Color(int.parse("0xFF${AppColors.light[key]?.replaceAll("#", "")}"));
    } else {
      color = Color(int.parse("0xFF${AppColors.dark[key]?.replaceAll("#", "")}"));
    }
    return color;
  }

  Color getPriorityColor(String priority) {
    Color color = Colors.grey.shade400;
    if (priority.toLowerCase() == "high") {
      color = Colors.red.shade400;
    } else if (priority.toLowerCase() == "medium") {
      color = Colors.orange.shade400;
    } else if (priority.toLowerCase() == "low") {
      color = Colors.blue.shade400;
    }
    return color;
  }

  Color getStatusColor(String status, bool isBackground) {
    switch (status.toLowerCase()) {
      case "pending" || "not applied":
        return isBackground ? Colors.red.shade100 : Colors.red;
      case "in progress":
        return isBackground ? Colors.orange.shade50 : Colors.orange;
      case "completed" || "applied":
        return isBackground ? Colors.green.shade50 : Colors.green;
      case "ongoing":
        return isBackground ? Colors.yellow.shade50 : Color(0xFFF1F185);
      default:
        return isBackground ? Colors.grey.shade50 : Colors.grey;
    }
  }

  double getSize12(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 12.0,
      conditionalValues: [
        const Condition.between(
          start: 1024,
          end: 1280,
          value: 8.0,
        ),
        const Condition.between(
          start: 1360,
          end: 1680,
          value: 10.0,
        ),
        const Condition.equals(
          name: TABLET,
          value: 10.0,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 8.0,
        ),
      ],
    ).value;
  }

  double getSize14(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 14.0,
      conditionalValues: [
        const Condition.between(
          start: 1024,
          end: 1280,
          value: 10.0,
        ),
        const Condition.between(
          start: 1360,
          end: 1680,
          value: 12.0,
        ),
        const Condition.equals(
          name: TABLET,
          value: 12.0,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 10.0,
        ),
      ],
    ).value;
  }

  double getSize16(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 16.0,
      conditionalValues: [
        const Condition.between(
          start: 1024,
          end: 1280,
          value: 12.0,
        ),
        const Condition.between(
          start: 1360,
          end: 1680,
          value: 14.0,
        ),
        const Condition.equals(
          name: TABLET,
          value: 14.0,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 12.0,
        ),
      ],
    ).value;
  }

  double getSize18(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 18.0,
      conditionalValues: [
        const Condition.between(
          start: 1024,
          end: 1280,
          value: 14.0,
        ),
        const Condition.between(
          start: 1360,
          end: 1680,
          value: 16.0,
        ),
        const Condition.equals(
          name: TABLET,
          value: 16.0,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 14.0,
        ),
      ],
    ).value;
  }

  Color parseColor(String input) {
    Color color = Color(int.parse("0xFF${input.replaceAll("#", "")}"));
    return color;
  }

  ThemeData themeData(Map<String, dynamic> themeJson) {
    if (themeJson.isEmpty) {
      return ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff0081C9),
        ),
      );
    } else {
      return ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: parseColor(themeJson['seedColor']),
          brightness: themeJson['brightness'] == Config.theme.LIGHT ? Brightness.light : Brightness.dark,
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            textStyle: WidgetStateProperty.all(
              TextStyle(
                inherit: false,
                fontWeight: FontWeight.w500,
                fontFamily: Constants.app.FONT_POPPINS,
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            textStyle: WidgetStateProperty.all(
              TextStyle(
                inherit: false,
                fontWeight: FontWeight.w500,
                fontFamily: Constants.app.FONT_POPPINS,
              ),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            inherit: true,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          bodyMedium: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          bodySmall: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          labelLarge: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          labelMedium: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          labelSmall: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          titleLarge: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          titleMedium: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          titleSmall: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          headlineLarge: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          headlineMedium: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          headlineSmall: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          displayLarge: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          displayMedium: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
          displaySmall: TextStyle(
            inherit: true,
            fontFamily: Constants.app.FONT_POPPINS,
          ),
        ),
      );
    }
  }
}

import 'package:ecommerce/app/routes.dart';
import 'package:ecommerce/common/helpers/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:month_year_picker/month_year_picker.dart';
import 'package:responsive_framework/responsive_framework.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final UiHelper uiHelper = UiHelper();
    return MaterialApp.router(
      builder:
          (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 375, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
      localizationsDelegates: [MonthYearPickerLocalizations.delegate],
      supportedLocales: [const Locale('en')],
      debugShowCheckedModeBanner: false,
      routerConfig: Routes().router,
      theme: ThemeData(primaryColor: Colors.brown),
    );
  }
}

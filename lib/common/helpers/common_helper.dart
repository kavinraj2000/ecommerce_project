import 'dart:typed_data';
import 'package:csv/csv.dart';
import 'package:ecommerce/common/constants/constants.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:pluto_grid_plus/pluto_grid_plus.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CommonHelper {
  final log = Logger();

  CommonHelper();

  String getIntlLabel(Map<String, String> labels, String language) {
    final log = Logger();
    log.d("CommonHelper:::getIntlLabel: Inputs:: $labels - $language");
    return labels[language] ?? "-";
  }

  String getIconPath(String iconName) {
    return "assets/icons/$iconName";
  }

  String getImagePath(String iconName) {
    return "assets/images/$iconName";
  }

  bool isDesktop(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isDesktop;
  }

  bool isMobile(BuildContext context) {
    return ResponsiveValue<bool>(
      context,
      defaultValue: false,
      conditionalValues: [
        const Condition.equals(
          name: MOBILE,
          value: true,
        ),
        const Condition.smallerThan(
          name: MOBILE,
          value: true,
        ),
      ],
    ).value;
  }

  bool isTablet(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isTablet;
  }

  double getFontSize(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 16,
      conditionalValues: [
        const Condition.equals(
          name: TABLET,
          value: 14,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 12,
        ),
      ],
    ).value;
  }

  double getActionIconSize(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 18,
      conditionalValues: [
        const Condition.equals(
          name: TABLET,
          value: 16,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 14,
        ),
      ],
    ).value;
  }

  String capitalize(String input) {
    if (input.isEmpty) return input;
    return input.substring(0, 1).toUpperCase() + input.substring(1);
  }

  String capitalizeUnderscore(String input) {
    if (input.isEmpty) return input;
    String formattedName = input.replaceAll('_', ' ');
    formattedName = formattedName.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
    return formattedName;
  }

  String convertDateTime(String input) {
    DateTime dateTime = DateTime.parse(input);
    String formattedDate = DateFormat("dd-MM-yyyy hh:mm a").format(dateTime);
    return formattedDate;
  }

  double getHeadingFontSize(BuildContext context) {
    return ResponsiveValue<double>(
      context,
      defaultValue: 16,
      conditionalValues: [
        const Condition.equals(
          name: TABLET,
          value: 14,
        ),
        const Condition.smallerThan(
          name: TABLET,
          value: 12,
        ),
      ],
    ).value;
  }

  String getCurrentDate() {
    String date = DateFormat('dd-MM-yy | hh:mm:ss a').format(DateTime.now());
    String input = DateTime.now().timeZoneName;
    List<String> words = input.split(' ');
    String timeZone = words.map((word) => word[0]).join('');
    return "$date - $timeZone";
  }

  List<MapEntry<String, String>> sortMapList(
      String key, List<Map<String, dynamic>> unSortedList) {
    List<MapEntry<String, String>> sortedList = [];
    Map<String, String> inputMap = {};
    for (var item in unSortedList) {
      String value = item[key];
      String label = item.containsKey('labels') && item['labels'] != null
          ? item['labels']['en']
          : item['name'];
      inputMap[value] = label;
      sortedList.add(MapEntry(value, label));
    }
    sortedList
        .sort((a, b) => a.value.toLowerCase().compareTo(b.value.toLowerCase()));
    return sortedList;
  }

  List<MapEntry<String, String>> sortDropdownMapList(
      String key, String valueField, List<Map<String, dynamic>> unSortedList) {
    List<MapEntry<String, String>> sortedList = [];
    Map<String, String> inputMap = {};
    for (var item in unSortedList) {
      String value = item[key];
      String label = item[valueField];
      inputMap[value] = label;
      sortedList.add(MapEntry(value, label));
    }
    sortedList
        .sort((a, b) => a.value.toLowerCase().compareTo(b.value.toLowerCase()));
    return sortedList;
  }

  // List<DropdownMenuItem> getDropDownOptions(List<ReferenceOptionModel> modelList, String? parentId, bool addDefault) {
  //   CommonHelper commonHelper = CommonHelper();
  //   List<DropdownMenuItem> options = [];
  //   try {
  //     if (parentId != null) {
  //       modelList = modelList.where((model) => model.parentid == parentId).toList();
  //     }

  //     if (addDefault) {
  //       options.add(
  //         DropdownMenuItem(
  //           value: "",
  //           child: Text(
  //             'Select a Value',
  //           ),
  //         ),
  //       );
  //     }

  //     modelList.sort((x, y) => x.displayorder.compareTo(y.displayorder));

  //     options = modelList.map((ReferenceOptionModel option) {
  //       log.d("CommonHelper::RferenceOption::${option.toJson()}");
  //       return DropdownMenuItem(
  //         value: "${option.id}|${option.name}",
  //         child: Text(
  //           (option.labels.isEmpty) ? option.name : commonHelper.getIntlLabel(option.labels, 'en'),
  //         ),
  //       );
  //     }).toList();
  //   } catch (error) {
  //     log.e("TableBuilderHelper::getFormField::Error:$error");
  //   }

  //   return options;
  // }

  Future<dynamic> showIntoMessage(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Information',
            style: TextStyle(
              fontFamily: Constants.app.FONT_POPPINS,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: Text(
            message,
            style: TextStyle(
              fontFamily: Constants.app.FONT_POPPINS,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  List<MapEntry<String, String>> sortMenuMapList(
      List<Map<String, dynamic>> unSortedList) {
    List<MapEntry<String, String>> sortedList = [];

    for (var item in unSortedList) {
      String value = item['value'] ?? '';
      List<String> splitValue = value.split('|');
      String visitId = value;
      String label = splitValue.length > 1 ? splitValue[1] : 'Unknown';

      sortedList.add(MapEntry(visitId, label));
    }

    sortedList
        .sort((a, b) => a.value.toLowerCase().compareTo(b.value.toLowerCase()));
    return sortedList;
  }

  List<MapEntry<String, String>> sortFoodMenuMapList(
      List<Map<String, dynamic>> unSortedList) {
    List<MapEntry<String, String>> sortedList = [];

    for (var item in unSortedList) {
      String value = item['value'] ?? '';
      List<String> splitValue = value.split('|');
      String foodId = value;
      String label = splitValue.length > 1 ? splitValue[1] : 'Unknown';

      sortedList.add(MapEntry(foodId, label));
    }

    sortedList
        .sort((a, b) => a.value.toLowerCase().compareTo(b.value.toLowerCase()));
    return sortedList;
  }
}

void exportToCSV(List<PlutoRow> rows, List<PlutoColumn> columns) async {
  List<List<String>> csvData = [
    columns.map((col) => col.title).toList(),
    ...rows.map((row) => columns
        .map((col) => row.cells[col.field]?.value.toString() ?? '')
        .toList())
  ];

  String csv = const ListToCsvConverter().convert(csvData);
  Uint8List csvBytes = Uint8List.fromList(csv.codeUnits);

  await Printing.sharePdf(bytes: csvBytes, filename: 'table_data.csv');
}

void exportToPDF(List<PlutoRow> rows, List<PlutoColumn> columns) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.TableHelper.fromTextArray(
          headers: columns.map((col) => col.title).toList(),
          data: rows
              .map((row) => columns
                  .map((col) => row.cells[col.field]?.value.toString() ?? '')
                  .toList())
              .toList(),
        );
      },
    ),
  );

  await Printing.sharePdf(bytes: await pdf.save(), filename: 'table_data.pdf');
}

import 'package:intl/intl.dart';

class DateModel {
  String dateFormat (date) {
    String formattedDate = DateFormat('yyyy/MM/dd').format(date);
    return formattedDate;
  }
}
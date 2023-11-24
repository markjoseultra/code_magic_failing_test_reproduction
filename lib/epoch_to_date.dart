import 'package:date_time_format/date_time_format.dart';

///This function is use to digest the fromMillisecondsSinceEpoch to a readable time format
String epochToDate(int millisecondsSinceEpoch) {
  return DateTimeFormat.format(
      DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch),
      format: 'F j, Y');
}

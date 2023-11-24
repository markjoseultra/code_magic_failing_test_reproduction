// coverage:ignore-file
import 'package:code_magic_failing_test_reproduction/epoch_to_date.dart';
import 'package:flutter/material.dart';

class SummaryRangePickerField extends StatelessWidget {
  final String title;
  final List<String>? dates;

  const SummaryRangePickerField({super.key, required this.title, this.dates});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
        if (dates == null || dates!.isEmpty) const Text("NA"),
        if (dates != null && dates!.isNotEmpty && dates!.length == 2)
          Text("${epochToDate(
            int.parse("${dates?[0]}"),
          )} to ${epochToDate(
            int.parse("${dates?[1]}"),
          )}")
      ],
    );
  }
}

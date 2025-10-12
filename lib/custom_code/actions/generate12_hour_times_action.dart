// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future generate12HourTimesAction() async {
  // Create list of times in 12-hour format with 30-minute intervals
  final List<String> times = [];

  for (int hour = 0; hour < 24; hour++) {
    final int displayHour = hour % 12 == 0 ? 12 : hour % 12;
    final String period = hour < 12 ? 'AM' : 'PM';

    times.add('${displayHour.toString().padLeft(2, '0')}:00 $period');
    times.add('${displayHour.toString().padLeft(2, '0')}:30 $period');
  }

  // Save to persisted AppState
  FFAppState().timeList12Hr = times;
}

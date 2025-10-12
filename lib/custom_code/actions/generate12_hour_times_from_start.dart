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

import 'dart:convert';
import 'dart:math' as math;

List<String>? generate12HourTimesFromStart(DateTime? startTime) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (startTime == null) return null;

  // Use 12-hour format
  final format = DateFormat('h:mm a');
  List<String> times = [];

  // Generate a list of 12 hourly time strings starting from startTime
  for (int i = 0; i < 24; i++) {
    final time = startTime.add(Duration(hours: i));
    times.add(format.format(time));
  }

  return times;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

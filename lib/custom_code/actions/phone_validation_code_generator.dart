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

//  Generates a random 4-digit number between 1000 and 9999
import 'dart:math';

import 'dart:typed_data';
import 'dart:convert';

Future<int> phoneValidationCodeGenerator() async {
  final secureRandom = Random.secure();
  return 1000 + secureRandom.nextInt(9000);
}

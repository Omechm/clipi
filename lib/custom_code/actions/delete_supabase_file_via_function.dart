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

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<bool> deleteSupabaseFileViaFunction(
  String bucket,
  String path,
  String functionUrl,
  String bearerToken,
) async {
  //  Basic parameter validation
  if (bucket.isEmpty ||
      path.isEmpty ||
      functionUrl.isEmpty ||
      bearerToken.isEmpty) {
    print(' Missing required parameters for deleteSupabaseFileViaFunction');
    return false;
  }

  try {
    //  Build full URL with query parameters
    final uri = Uri.parse(functionUrl).replace(
      queryParameters: {
        'bucket': bucket,
        'path': path,
      },
    );

    //  Send DELETE request
    final response = await http.delete(
      uri,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $bearerToken',
      },
    );

    //  Parse response
    if (response.statusCode >= 200 && response.statusCode < 300) {
      try {
        final body = json.decode(response.body);
        if (body is Map && body['success'] == true) {
          print(' File deleted successfully');
          return true;
        }
      } catch (_) {
        // Response wasn't valid JSON — assume failure
        print(' Could not parse response JSON');
      }
    } else {
      print(
          ' Delete failed with status ${response.statusCode}: ${response.body}');
    }

    //  Any other case = failure
    return false;
  } catch (e) {
    print(' Exception during deleteSupabaseFileViaFunction: $e');
    return false;
  }
}

import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<DayWeekStruct> daysOfTheWeek(
  DateTime initialDate,
  String language,
  DateTime? chosenDay,
  Color primaryColor,
  Color colorNull,
) {
  List<DayWeekStruct> days = [];
  DateTime today = DateTime.now();

  for (int i = 0; i < 7; i++) {
    DateTime day = initialDate.add(Duration(days: i));
    String formattedDayName =
        DateFormat('E', _getLocale(language)).format(day).toUpperCase();
    String formattedDayNumber = DateFormat('dd').format(day);

    Color dayColor = colorNull; // Usa colorNull como cor padrão
    if (day.isAtSameMomentAs(today) && chosenDay == null) {
      dayColor = primaryColor; // Cor para hoje
    } else if (chosenDay != null && day.isAtSameMomentAs(chosenDay)) {
      dayColor = primaryColor; // Cor para o dia escolhido
    }

    days.add(DayWeekStruct(
      day: formattedDayName,
      dayNumber: formattedDayNumber,
      dateTime: day, // Adiciona a data e hora completa
      color: dayColor,
    ));
  }

  return days;
  // MODIFY CODE ONLY ABOVE THIS LINE
}

String _getLocale(String language) {
  switch (language.toLowerCase()) {
    case 'en':
      return 'en_US';
    case 'es':
      return 'es_ES';
    case 'pt':
      return 'pt_BR';
    default:
      return 'en_US'; // Default return value to handle unexpected cases
  }
}

DateTime? returnThe7thDay(DateTime startDate) {
  // retorne o setimo dia atraves do start date
  DateTime? seventhDay = startDate.add(Duration(days: 7));
  return seventhDay;
}

DateTime? return7thDayAgo(DateTime startDate) {
  // retornar  7 Dia atras atarves do argumento startDate
  DateTime? returnDate;
  try {
    returnDate = startDate.subtract(Duration(days: 7));
  } catch (e) {
    print(e);
  }
  return returnDate;
}

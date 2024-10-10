import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime? dynamicMonthSelector(int? month) {
  if (month == null) {
    return null; // Return null if month is null
  }

  if (month < 1 || month > 12) {
    return null; // Return null for invalid months
  }

  // Create a DateTime object for the first day of the specified month in 2024
  DateTime date = DateTime(2024, month, 1);
  return date; // Return the DateTime object
}

DateTime? dynamicMonthSelectorCopy(int? month) {
  // return a dateTime where month as argument
  if (month == null || month < 1 || month > 12) {
    return null;
  }

  DateTime date = DateTime(2024, month, 1);
  return date;
}

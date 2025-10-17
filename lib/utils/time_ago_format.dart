import 'package:flutter/material.dart';
import '../l10n/app_localization.dart';

String formatTimeAgo(BuildContext context, DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);
  final t = AppLocalizations.of(context)!;

  if (difference.inSeconds < 60) {
    return t.justNow;
  } else if (difference.inMinutes < 60) {
    final minutes = difference.inMinutes;
    return t.minutesAgo(minutes);
  } else if (difference.inHours < 24) {
    final hours = difference.inHours;
    return t.hoursAgo(hours);
  } else {
    final days = difference.inDays;
    return t.daysAgo(days);
  }
}

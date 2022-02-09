import 'package:riverpod/riverpod.dart';

final titleProvider = Provider<String>((ref) {
  return 'カレンダー';
});
final scheduleProvider = Provider<String>((ref) {
  return '';
});

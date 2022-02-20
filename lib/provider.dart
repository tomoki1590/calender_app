import 'package:riverpod/riverpod.dart';

DateTime _foucused = DateTime.now();
final FoucusedProvider = StateProvider((ref) {
  return _foucused;
});

import 'package:flutter_riverpod/flutter_riverpod.dart';

///
/// Riverpod for dashboard bottom navigation
/// [selectedIndexProvider]
///
final selectedIndexProvider = StateProvider<int>((ref) => 0);

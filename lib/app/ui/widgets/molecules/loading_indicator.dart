// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/widgets/atoms/circular_loading.dart';
import 'package:freeway_app/app/ui/widgets/atoms/texts.dart';

/// A simple load indicator
class LoadingIndicator extends StatelessWidget {
  /// Creates a widget to indicate loading data
  const LoadingIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const CircularLoading(), StyledText.body1('Cargando')],
    );
  }
}

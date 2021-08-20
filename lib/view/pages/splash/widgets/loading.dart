// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../widgets/widgets.dart';

/// A simple load indicator
class BottomLoading extends StatelessWidget {
  /// Creates a widget to indicate loading data
  const BottomLoading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CircularLoading(), StyledText('Cargando', type: StyledTextType.body1)],
    );
  }
}

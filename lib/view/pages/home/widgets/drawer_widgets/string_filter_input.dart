// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'expandable_filter_input.dart';

/// A filter input to write strings
ExpansionPanel buildStringFilterInput({
  required bool expanded,
  required String title,
  String? subtitle,
}) {
  return builExpandableFilterInput(
    expanded: expanded,
    body: const _StringFilterInput(),
    title: title,
    subtitle: subtitle,
  );
}

class _StringFilterInput extends StatelessWidget {
  const _StringFilterInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('This is a string filter');
  }
}

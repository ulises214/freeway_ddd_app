// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../../theme.dart';

/// Creates a widget that can be expanded
ExpansionPanel builExpandableFilterInput({
  required String title,
  required Widget body,
  required bool expanded,
  String? subtitle,
}) {
  return ExpansionPanel(
    canTapOnHeader: true,
    headerBuilder: (_, isExpanded) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyledText(
            title,
            type: StyledTextType.body2,
            textColor: FreeWayTheme.gray3,
          ),
          StyledText(
            subtitle ?? '',
            type: StyledTextType.body1,
            textColor: FreeWayTheme.gray3,
          ),
        ],
      );
    },
    isExpanded: expanded,
    body: body,
  );
}

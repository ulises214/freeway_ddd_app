import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import '../../../theme.dart';

/// Common filter chip with predefinied styles
class StyledFilterChip extends StatelessWidget {
  /// Create a styled filter chip
  const StyledFilterChip({
    Key? key,
    required this.onSelected,
    required this.selected,
  }) : super(key: key);

  /// The state of this chip
  final bool selected;

  /// The callback
  final VoidCallback onSelected;

  void _handleOnSelect(bool isSelected) {
    if (isSelected) onSelected();
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      checkmarkColor: FreeWayTheme.officialBlue2,
      selected: selected,
      onSelected: _handleOnSelect,
      backgroundColor: FreeWayTheme.gray1,
      selectedColor: Colors.transparent,
      label: StyledText(
        'Filtro ejemplo',
        textColor: selected ? FreeWayTheme.extraBlue2 : FreeWayTheme.gray4,
        type: StyledTextType.body1,
      ),
    );
  }
}

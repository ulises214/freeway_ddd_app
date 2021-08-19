import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import '../../../../theme.dart';
import 'expandable_filter_input.dart';

/// A filter input to write strings
ExpansionPanel buildStarsFilterInput({
  required bool expanded,
  required String title,
  String? subtitle,
}) {
  return builExpandableFilterInput(
    expanded: expanded,
    body: const _StarsFilterInput(),
    title: title,
    subtitle: subtitle,
  );
}

class _StarsFilterInput extends StatefulWidget {
  const _StarsFilterInput({Key? key}) : super(key: key);

  @override
  __StarsFilterInputState createState() => __StarsFilterInputState();
}

class __StarsFilterInputState extends State<_StarsFilterInput> {
  int? _selectedIndex;
  void _changeSelectedChip(int index) {
    setState(() {
      if (index == _selectedIndex) return _selectedIndex = null;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 5.0,
        children: List.generate(
          5,
          (i) => _StarFilterChip(
            ranking: i + 1,
            isSelected: _selectedIndex == i,
            onSelected: () => _changeSelectedChip(i),
          ),
        ).reversed.toList(),
      ),
    );
  }
}

class _StarFilterChip extends StatelessWidget {
  const _StarFilterChip(
      {Key? key, required this.ranking, required this.isSelected, required this.onSelected})
      : super(key: key);

  final int ranking;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: isSelected,
      showCheckmark: false,
      backgroundColor: FreeWayTheme.gray2.withOpacity(1),
      selectedColor: FreeWayTheme.extraBlue3.withOpacity(0.2),
      onSelected: (_) => onSelected(),
      elevation: 0,
      pressElevation: 0,
      label: Tooltip(
        message: '$ranking estrellas${ranking < 5 ? ' o más' : ''}',
        child: StarsIndicator(
          ranking: ranking,
          incomplete: true,
        ),
      ),
    );
  }
}

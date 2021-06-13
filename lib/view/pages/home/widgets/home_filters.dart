import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

import 'filter_chip.dart';

/// The list of filtes represented in filters chips
class HomeFilters extends StatefulWidget implements PreferredSizeWidget {
  /// Create the list of filters chips
  const HomeFilters({Key? key}) : super(key: key);
  @override
  _HomeFiltersState createState() => _HomeFiltersState();
  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class _HomeFiltersState extends State<HomeFilters> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GradientPreferredSizeWidget(
      elevation: 4.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 10.0,
            ),
            ..._buildFilters()
                .expand((element) => [element, const SizedBox(width: 10.0)])
                .toList()
          ],
        ),
      ),
    );
  }

  List<StyledFilterChip> _buildFilters() {
    return List.generate(
      5,
      (index) => StyledFilterChip(
        selected: _selectedIndex == index,
        onSelected: () => _changeSelectedIndex(index),
      ),
    );
  }

  void _changeSelectedIndex(int selectedIndex) =>
      setState(() => _selectedIndex = selectedIndex);
}

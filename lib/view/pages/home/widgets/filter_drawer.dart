import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'drawer_widgets/drawer_title.dart';
import 'drawer_widgets/filter_input_list.dart';
import 'drawer_widgets/save_filters_button.dart';

/// A drawer to select more complex filter options
class FilterDrawer extends StatelessWidget {
  /// Create a drawer with filter options
  const FilterDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: const [
            FilterDrawerTitle(),
            Divider(color: FreeWayTheme.gray3),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: FiltersInputList(),
            ),
            Divider(color: FreeWayTheme.gray3),
            SaveFiltersButton(),
          ],
        ),
      ),
    );
  }
}

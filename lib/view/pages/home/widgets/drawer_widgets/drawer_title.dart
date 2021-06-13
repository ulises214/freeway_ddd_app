import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../../../../theme.dart';

/// The top widget for a filter drawer
///
/// It can close the drawer and reset the filter params
class FilterDrawerTitle extends StatelessWidget {
  /// Creates a title for a filter drawer
  const FilterDrawerTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              icon: const Icon(
                Icons.close,
                color: FreeWayTheme.danger,
                size: 32.0,
              ),
              onPressed: Get.back,
            ),
            const StyledText(
              'Filtros Avanzados',
              type: StyledTextType.h6,
              textColor: FreeWayTheme.gray3,
            ),
          ],
        ),
        TextLink(
          text: 'Reestablecer',
          textColor: FreeWayTheme.officialBlue1,
          onPressed: () {},
        ),
      ],
    );
  }
}

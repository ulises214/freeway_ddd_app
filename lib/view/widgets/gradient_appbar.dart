import 'package:flutter/material.dart';

import '../theme.dart';
import 'gradient_preferred_size_widget.dart';

/// Custom appbar with a gradient background
class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a custom appbar that seeks to implement the material [AppBar]
  const GradientAppBar(
      {Key? key, required this.title, this.actions = const [], this.bottom})
      : super(key: key);

  /// The title for this widget
  ///
  /// [title] is displayed in the left side
  final Widget title;

  /// Widgets displayed in right side of this appbar
  final List<Widget> actions;

  /// Thw widget displayed in the bottom of this widget
  final PreferredSizeWidget? bottom;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: FreeWayTheme.officialBlue1,
          height: MediaQuery.of(context).padding.top,
          width: double.infinity,
        ),
        GradientPreferredSizeWidget(
          elevation: bottom == null ? 4.0 : 0.0,
          child: Material(
            color: Colors.transparent,
            textStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(children: [Expanded(child: title), ...actions]),
            ),
          ),
        ),
        if (bottom != null) bottom as StatefulWidget,
      ],
    );
  }

  @override
  Size get preferredSize => Size(
        double.infinity,
        kToolbarHeight + (bottom == null ? 0 : bottom!.preferredSize.height),
      );
}

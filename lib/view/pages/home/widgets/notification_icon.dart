// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../assets_paths.dart';
import '../../../theme.dart';

/// Button icon to open notification page
class NotificationIcon extends StatelessWidget {
  /// Create the notification icon
  const NotificationIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgIcon(
                svgPath: AssetsPaths.icons.bell,
                color: Colors.white,
                size: 24.0,
              ),
            ),
            const Positioned(
              right: 10.0,
              top: 10.0,
              child: IgnorePointer(
                child: Icon(Icons.brightness_1, color: FreeWayTheme.danger, size: 9.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

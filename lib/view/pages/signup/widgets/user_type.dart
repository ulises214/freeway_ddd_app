// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../theme.dart';

/// Display the information to choose a user type
class UserTypeCard extends StatelessWidget {
  /// Creates a card to display UserType info
  const UserTypeCard({
    Key? key,
    required this.svgPath,
    required this.title,
    required this.body,
    required this.onTap,
  }) : super(key: key);

  /// Fucntion to call when this card is selected
  final VoidCallback onTap;

  /// Asset path to display
  final String svgPath;

  /// The title for this card
  final String title;

  /// The body for this card
  final String body;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(24.0);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: radius,
      ),
      child: Material(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
        ),
        child: InkWell(
          borderRadius: radius,
          onTap: onTap,
          child: Row(
            children: _buildChildren(context),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildChildren(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SvgIcon(
          svgPath: svgPath,
          size: 80.0,
        ),
      ),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledText(
              title,
              bold: true,
              type: StyledTextType.body1,
              textColor: FreeWayTheme.black,
            ),
            StyledText(
              body,
              type: StyledTextType.body1,
              textColor: FreeWayTheme.black,
            ),
          ],
        ),
      )
    ];
  }
}

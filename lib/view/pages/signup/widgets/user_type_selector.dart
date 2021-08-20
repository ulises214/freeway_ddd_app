// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../../model/enums/enums.dart';
import '../../../assets_paths.dart';
import 'user_type.dart';

/// A widget to select a [UserType]
class UserTypeSelector extends StatelessWidget {
  /// Creates a widget to select a [UserType]
  const UserTypeSelector({
    Key? key,
    required this.onSelectType,
  }) : super(key: key);

  /// Function to call when a types is selected
  final Function(UserType) onSelectType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserTypeCard(
          onTap: () => onSelectType(UserType.client),
          svgPath: AssetsPaths.icons.searchService,
          title: 'Busco',
          body: 'Un servicio de transporte',
        ),
        const SizedBox(
          height: 15,
        ),
        UserTypeCard(
          onTap: () => onSelectType(UserType.carrier),
          svgPath: AssetsPaths.icons.offerService,
          title: 'Ofrezco',
          body: 'Mis servicios de transporte',
        ),
      ],
    );
  }
}

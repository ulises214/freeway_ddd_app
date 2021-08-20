// 🎯 Dart imports:
import 'dart:math';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/column_builder.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../../model/travel/models.dart';
import '../../../assets_paths.dart';
import '../../../theme.dart';

/// Widget that display a list of services in simple card
class AllServicesList extends StatefulWidget {
  /// Creates a list of travels
  const AllServicesList({Key? key}) : super(key: key);

  @override
  _AllServicesListState createState() => _AllServicesListState();
}

class _AllServicesListState extends State<AllServicesList> {
  final _itemsCount = 60;
  final _random = Random();
  SimpleTravel _buildTravel() => SimpleTravel(
      origin: 'Manzanillo',
      rating: _random.nextInt(6),
      reviewsCount: _random.nextInt(15),
      uriProfileImage: AssetsPaths.images.defaultProfile,
      title: 'Ejemplo de titulo');

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 340.0),
      child: StyledCard(
        title: const StyledText(
          'Todos los servicios',
          type: StyledTextType.h6,
          textColor: FreeWayTheme.officialBlue2,
        ),
        hasDivider: true,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ColumnBuilder(
              itemBuilder: (_, index) {
                final travel = _buildTravel();
                return SimpleTravelItem(
                  travel: travel,
                  onTap: () {},
                );
              },
              itemCount: _itemsCount),
        ),
      ),
    );
  }
}

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../../../../theme.dart';
import 'stars_filter_input.dart';
import 'string_filter_input.dart';

/// The List for the filter params
class FiltersInputList extends StatefulWidget {
  /// Creates a list with the inputs to make an advanced filter
  const FiltersInputList({Key? key}) : super(key: key);

  @override
  _FiltersInputListState createState() => _FiltersInputListState();
}

class _FiltersInputListState extends State<FiltersInputList> {
  List<bool> _areOpen = [];
  final int _itemCount = 5;
  @override
  void initState() {
    super.initState();
    _areOpen = List.filled(5, false);
  }

  void _expansionCallback(int index, bool isExpanded) {
    setState(() {
      if (isExpanded) {
        _areOpen[index] = !_areOpen[index];
        return;
      }
      _areOpen = List.filled(_itemCount, false)..[index] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        expansionCallback: _expansionCallback,
        dividerColor: FreeWayTheme.officialBlue1,
        elevation: 0,
        children: _buildFilters());
  }

  List<ExpansionPanel> _buildFilters() {
    return List.generate(
      _itemCount - 1,
      (index) => buildStringFilterInput(
        title: 'Empresa',
        subtitle: '$index',
        expanded: _areOpen[index],
      ),
    )..add(
        buildStarsFilterInput(
          title: 'Calificación',
          subtitle: 'Mínimo puntaje',
          expanded: _areOpen[_itemCount - 1],
        ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';

/// Button to save filter and request new travels
class SaveFiltersButton extends StatelessWidget {
  /// Creates a [RoundedButton] to save the filter changes
  const SaveFiltersButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedButton.gradient(
      'Filtrar resultados',
      onPressed: () {},
    );
  }
}

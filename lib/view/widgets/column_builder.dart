import 'package:flutter/material.dart';

/// A column that generates its children dynamically on demand
///
/// It is an implementation similar to a [ListView.builder]
/// but without the possibility of scrolling.
class ColumnBuilder extends StatelessWidget {
  /// This widget is appropriate for a list with a large (or infinite)
  /// number of children because the builder is called only for those children
  /// that are actually visible.
  ///
  /// The `itemBuilder` callback will be called only with indices greater than
  /// or equal to zero and less than `itemCount`.
  const ColumnBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  }) : super(key: key);

  /// Callback that will build the widgets on deman
  final IndexedWidgetBuilder itemBuilder;

  /// This property will passed directly to [Column]
  final MainAxisAlignment mainAxisAlignment;

  /// This property will passed directly to [Column]
  final MainAxisSize mainAxisSize;

  /// This property will passed directly to [Column]

  final CrossAxisAlignment crossAxisAlignment;

  /// This property will passed directly to [Column]

  final TextDirection? textDirection;

  /// This property will passed directly to [Column]
  final VerticalDirection verticalDirection;

  /// The num of children that will be build
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      children: List.generate(itemCount, (index) => itemBuilder(context, index))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';

import '../theme.dart';
import 'texts.dart';

/// The values that input can choose from
enum BinarySelectorValues {
  /// Left button is selected
  left,

  /// Right button is selected
  right,
}

/// Controller for [BinarySelector]
///
/// Manage and storage the selected option in widget
class BinarySelectorController extends ValueNotifier<BinarySelectorValues?> {
  /// Creates a new controller with [BinarySelectorValues.left]
  /// as default value if [selectedField] isn't provided
  BinarySelectorController(
      [BinarySelectorValues? selectedField = BinarySelectorValues.left])
      : super(selectedField);

  /// Creates a new controller for [BinarySelector] with null as firs result
  factory BinarySelectorController.empty() => BinarySelectorController(null);
}

/// An styled input like radiobutton
///
/// This widget help to choose between 2 values
class BinarySelector extends StatefulWidget {
  /// Creates a new widget with 2 options to choose
  const BinarySelector({
    Key? key,
    required this.label,
    required this.leftLabel,
    required this.rightLabel,
    required this.controller,
  }) : super(key: key);

  /// String displayed in left button
  final String leftLabel;

  /// String displayed in right button
  final String rightLabel;

  /// The title of the widget
  final Widget label;

  /// The controller to manage the selected option
  final BinarySelectorController controller;

  @override
  _BinarySelectorState createState() => _BinarySelectorState();
}

class _BinarySelectorState extends State<BinarySelector> {
  @override
  void initState() {
    super.initState();
  }

  void _changeControllerValue(BinarySelectorValues value) {
    if (widget.controller.value == value) {
      return widget.controller.value = null;
    }
    widget.controller.value = value;
  }

  void _selectLeft() =>
      setState(() => _changeControllerValue(BinarySelectorValues.left));

  void _selectRight() =>
      setState(() => _changeControllerValue(BinarySelectorValues.right));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft, child: widget.label),
          const SizedBox(height: 5.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _OptionButton(
                onPressed: _selectLeft,
                selected: widget.controller.value == BinarySelectorValues.left,
                label: widget.leftLabel,
                position: BinarySelectorValues.left,
              ),
              _OptionButton(
                onPressed: _selectRight,
                selected: widget.controller.value == BinarySelectorValues.right,
                label: widget.rightLabel,
                position: BinarySelectorValues.right,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OptionButton extends StatelessWidget {
  const _OptionButton(
      {Key? key,
      required this.label,
      required this.position,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String label;
  final BinarySelectorValues position;
  final bool selected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: selected ? FreeWayTheme.horizontalGradient : null,
          color: !selected ? FreeWayTheme.gray2 : null,
          borderRadius: position == BinarySelectorValues.left
              ? const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
        ),
        child: MaterialButton(
          shape: const RoundedRectangleBorder(),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: StyledText(
              label,
              type: StyledTextType.body1,
              textColor: selected ? Colors.white : FreeWayTheme.gray3,
            ),
          ),
        ),
      ),
    );
  }
}

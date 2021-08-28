// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';

OutlineInputBorder _borderWithColor(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(width: 1, color: color),
    );
final _border = _borderWithColor(FreeWayColors.gray4);
final _errorBorder = _borderWithColor(FreeWayColors.danger);
final _focusedBorder = _borderWithColor(FreeWayColors.officialBlue1);

/// Generic and styled input form
class StyledTextFormInput extends StatelessWidget {
  /// Creates a styled input text
  ///
  /// When [controller] is setted the value is stored here
  const StyledTextFormInput({
    required this.label,
    Key? key,
    this.controller,
    this.validator,
    this.keyboardType,
    this.prefixIcon,
    this.sufixIcon,
    this.hiddeText = false,
  }) : super(key: key);

  /// The validator for the value
  final TextFromValidator? validator;

  /// The controller for the input value
  final TextEditingController? controller;

  /// The style of the keyboard when writing in this input
  ///
  /// By default set to [TextInputType.text] when not specified
  final TextInputType? keyboardType;

  /// The label displayed in this input
  ///
  /// [label] is used as a guide for this input
  final String label;

  /// An icon displayed in left side for this input
  final Widget? prefixIcon;

  /// An icon displayed in right side for this input
  final Widget? sufixIcon;

  /// Replace text with * to hide the text
  final bool hiddeText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: hiddeText,
      validator: validator?.validate,
      style: FreeWayTheme.theme.textTheme.bodyText1!.copyWith(color: FreeWayColors.black),
      decoration: InputDecoration(
        enabledBorder: _border,
        focusedBorder: _focusedBorder,
        errorBorder: _errorBorder,
        focusedErrorBorder: _errorBorder,
        errorStyle: const TextStyle(
          color: FreeWayColors.danger,
        ),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        prefixIcon: prefixIcon,
        prefixStyle: const TextStyle(color: FreeWayColors.gray4),
        suffixIcon: sufixIcon,
        labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: FreeWayColors.gray4),
      ),
    );
  }
}

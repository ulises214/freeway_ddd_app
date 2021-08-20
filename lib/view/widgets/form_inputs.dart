// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../assets_paths.dart';
import '../theme.dart';
import 'svg_icon.dart';

OutlineInputBorder _borderWithColor(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(width: 1, color: color),
    );
final _border = _borderWithColor(FreeWayTheme.gray4);
final _errorBorder = _borderWithColor(FreeWayTheme.danger);
final _focusedBorder = _borderWithColor(FreeWayTheme.officialBlue1);

/// Styled form special for password values
class StyledPasswordFormInput extends StatefulWidget {
  /// Creates an input for password values
  const StyledPasswordFormInput(
      {Key? key,
      this.controller,
      this.validator,
      this.label = 'Contraseña',
      this.displayIcon = true})
      : super(key: key);

  /// The controller for the password value
  final TextEditingController? controller;

  /// Validator to grant a correct password format
  final String? Function(String? value)? validator;

  /// The label for the input
  final String label;

  /// If [displayIcon] is true then a lock icon is displayed in left side
  final bool displayIcon;

  @override
  _StyledPasswordFormInputState createState() => _StyledPasswordFormInputState();
}

class _StyledPasswordFormInputState extends State<StyledPasswordFormInput> {
  bool _isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return StyledFormInput(
      controller: widget.controller,
      hiddeText: _isPasswordHidden,
      label: widget.label,
      prefixIcon: widget.displayIcon
          ? SvgIcon(svgPath: AssetsPaths.icons.password, color: FreeWayTheme.gray3)
          : null,
      validator: widget.validator,
      sufixIcon: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => setState(() => _isPasswordHidden = !_isPasswordHidden),
            child: SvgIcon(svgPath: AssetsPaths.icons.eye, color: FreeWayTheme.gray4),
          ),
        ),
      ),
    );
  }
}

/// Generic and styled input form
class StyledFormInput extends StatelessWidget {
  /// Creates a styled input text
  ///
  /// When [controller] is setted the value is stored here
  const StyledFormInput({
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
  final String? Function(String? value)? validator;

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
      validator: validator,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(color: FreeWayTheme.black),
      decoration: InputDecoration(
          enabledBorder: _border,
          focusedBorder: _focusedBorder,
          errorBorder: _errorBorder,
          focusedErrorBorder: _errorBorder,
          errorStyle: const TextStyle(
            color: FreeWayTheme.danger,
          ),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: prefixIcon,
          prefixStyle: const TextStyle(color: FreeWayTheme.gray4),
          prefixIconConstraints:
              const BoxConstraints(minHeight: 0.0, maxHeight: 14.0, minWidth: 32.0),
          suffixIconConstraints:
              const BoxConstraints(minHeight: 0.0, maxHeight: 32.0, minWidth: 32.0),
          suffixIcon: sufixIcon,
          labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: FreeWayTheme.gray4)),
    );
  }
}

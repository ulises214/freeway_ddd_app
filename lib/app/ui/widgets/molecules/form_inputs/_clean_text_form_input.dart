part of '_form_inputs.dart';

InputBorder _borderWithColor(Color color) => UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: color),
    );
final _border = _borderWithColor(FreeWayColors.gray4);
final _errorBorder = _borderWithColor(FreeWayColors.danger);
final _focusedBorder = _borderWithColor(FreeWayColors.officialBlue1);

/// Generic and styled input form
class CleanTextFormInput extends StatelessWidget {
  /// Creates a styled input text
  ///
  /// When [controller] is setted the value is stored here
  const CleanTextFormInput({
    required this.label,
    Key? key,
    this.controller,
    this.validator,
    this.keyboardType,
    this.sufixIcon,
    this.prefixIcon,
    this.title,
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

  /// An icon displayed in right side for this input
  final Widget? sufixIcon;

  /// An icon displayed in left side for this input
  final Widget? prefixIcon;

  /// An optional title displayed up of the input
  final Widget? title;

  /// Replace text with * to hide the text
  final bool hiddeText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) title!,
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: hiddeText,
          validator: validator?.validate,
          style: FreeWayTheme.theme.textTheme.bodyText2?.copyWith(color: FreeWayColors.black),
          cursorColor: FreeWayColors.officialBlue1,
          decoration: InputDecoration(
            enabledBorder: _border,
            focusedBorder: _focusedBorder,
            errorBorder: _errorBorder,
            focusedErrorBorder: _errorBorder,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: label,
            suffixIcon: sufixIcon,
            prefixIcon: prefixIcon,
            contentPadding: EdgeInsets.zero,
            errorStyle: FreeWayTheme.theme.textTheme.caption?.copyWith(color: FreeWayColors.danger),
            labelStyle:
                FreeWayTheme.theme.textTheme.bodyText2?.copyWith(color: FreeWayColors.gray4),
          ),
        ),
      ],
    );
  }
}

part of '_form_inputs.dart';

/// Styled form special for password values
class CleanPasswordFormInput extends StatefulWidget {
  /// Creates an input for password values
  const CleanPasswordFormInput(
      {Key? key,
      this.controller,
      this.validator,
      this.title,
      this.label = 'Contraseña',
      this.displayIcon = true})
      : super(key: key);

  /// The controller for the password value
  final TextEditingController? controller;

  /// Validator to grant a correct password format
  final TextFromValidator? validator;

  /// The label for the input
  final String label;

  /// Widget passed to [CleanTextFormInput]
  final Widget? title;

  /// If [displayIcon] is true then a lock icon is displayed in left side
  final bool displayIcon;

  @override
  _CleanPasswordFormInputState createState() => _CleanPasswordFormInputState();
}

class _CleanPasswordFormInputState extends State<CleanPasswordFormInput> {
  bool _isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return CleanTextFormInput(
      title: widget.title,
      controller: widget.controller,
      hiddeText: _isPasswordHidden,
      label: widget.label,
      validator: widget.validator,
      prefixIcon: const InputIcon(FontAwesomeIcons.solidLock),
      sufixIcon: ClipOval(
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => setState(() => _isPasswordHidden = !_isPasswordHidden),
            child: InputIcon(
              _isPasswordHidden ? FontAwesomeIcons.solidEye : FontAwesomeIcons.solidEyeSlash,
              color: FreeWayColors.gray4,
            ),
          ),
        ),
      ),
    );
  }
}

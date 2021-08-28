import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeway_app/app/ui/shared/text_form_validator.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/atoms.dart';
import 'package:freeway_app/app/ui/widgets/molecules/form_inputs/clean_text_form_input.dart';

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
  _StyledPasswordFormInputState createState() => _StyledPasswordFormInputState();
}

class _StyledPasswordFormInputState extends State<CleanPasswordFormInput> {
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freeway_app/app/ui/shared/shared.dart';
import 'package:freeway_app/app/ui/widgets/atoms/atoms.dart';
import 'package:freeway_app/app/ui/widgets/molecules/form_inputs/text_form_input.dart';

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
  final TextFromValidator? validator;

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
    return StyledTextFormInput(
      controller: widget.controller,
      hiddeText: _isPasswordHidden,
      label: widget.label,
      prefixIcon: widget.displayIcon ? const InputIcon(FontAwesomeIcons.lock) : null,
      validator: widget.validator,
      sufixIcon: ClipOval(
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => setState(() => _isPasswordHidden = !_isPasswordHidden),
            child: InputIcon(
              _isPasswordHidden ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
              color: FreeWayColors.gray4,
            ),
          ),
        ),
      ),
    );
  }
}

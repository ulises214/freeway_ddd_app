// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:freeway_app/app/ui/screens/login/widget/sign_up_link.dart';
import 'package:freeway_app/app/ui/shared/text_form_validator.dart';
import 'package:freeway_app/app/ui/shared/theme.dart';
import 'package:freeway_app/app/ui/widgets/atoms/styled_text.dart';
import 'package:freeway_app/app/ui/widgets/atoms/text_link.dart';
import 'package:freeway_app/app/ui/widgets/molecules/form_inputs/clean_password_form_input.dart';
import 'package:freeway_app/app/ui/widgets/molecules/form_inputs/clean_text_form_input.dart';
import 'package:freeway_app/app/ui/widgets/molecules/rounded_button.dart';
import 'package:freeway_app/context/shared/domain/common_types/phone_number.dart';
import 'package:freeway_app/context/shared/domain/common_types/valid_password.dart';
import 'package:freeway_app/context/user/domain/user_data.dart';
part '_login_form_controls.dart';

/// Form for login user controllers
class LoginForm extends StatelessWidget {
  /// Create the form to login a user
  LoginForm({
    Key? key,
    required this.onSubmit,
    required this.showRestorePasswordDialog,
    required this.goToSignUp,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _phoneFieldController = TextEditingController();
  final _passwordControllerFieldController = TextEditingController();

  /// Called when [SignUpLink] is pressed
  final VoidCallback goToSignUp;

  /// when a [TextLink] is pressed show a dialog to restore the password
  final VoidCallback showRestorePasswordDialog;

  /// Function called when form is submitted
  final void Function(UserData) onSubmit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StyledText(
            'Ingresar',
            textProperties: TextProperties(
              type: TextType.h4,
              bold: true,
              color: FreeWayColors.officialBlue1,
            ),
          ),
          const SizedBox(height: 30.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _FormBody(
                passwordController: _passwordControllerFieldController,
                phoneController: _phoneFieldController,
                showRestorePasswordDialog: showRestorePasswordDialog,
                submit: _submit,
              ),
            ),
          ),
          Center(child: SignUpLink(onPressed: goToSignUp)),
        ],
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() == true) {
      onSubmit(
        UserData(
          password: ValidPassword(_passwordControllerFieldController.text),
          phoneNumber: PhoneNumber(_phoneFieldController.text),
        ),
      );
    }
  }
}

class _FormBody extends StatefulWidget {
  const _FormBody({
    Key? key,
    required this.submit,
    required this.showRestorePasswordDialog,
    required this.passwordController,
    required this.phoneController,
  }) : super(key: key);
  final VoidCallback submit;
  final VoidCallback showRestorePasswordDialog;
  final TextEditingController passwordController;
  final TextEditingController phoneController;

  @override
  __FormBodyState createState() => __FormBodyState();
}

class __FormBodyState extends State<_FormBody> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      child: Column(
        children: [
          _PhoneInput(phoneFieldController: widget.phoneController),
          _PasswordInput(passwordControllerFieldController: widget.passwordController),
          _ForgottenPassword(showRestorePasswordDialog: widget.showRestorePasswordDialog),
          _SubmitButton(widget.submit),
        ].expand((e) => [e, const SizedBox(height: 15.0)]).toList(),
      ),
    );
  }
}

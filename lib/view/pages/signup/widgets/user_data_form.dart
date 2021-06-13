import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../../../../model/user/user_data.dart';
import '../../../../models_view/signup_model_view.dart';
import '../../../helpers/validators.dart';
import '../../../theme.dart';
import 'fields_required.dart';
import 'form_wrapper.dart';

class _CheckBoxController extends ValueNotifier<bool> {
  _CheckBoxController() : super(false);
}

/// Form for [UserData]
class UserDataForm extends StatefulWidget {
  /// Creates a form to fill [UserData]
  UserDataForm({Key? key, required this.onSubmit}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  /// Function to call when form is filled
  final VoidCallback onSubmit;
  // ? Controllers
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  _UserDataFormState createState() => _UserDataFormState();
}

class _UserDataFormState extends State<UserDataForm> {
  final checkBoxController = _CheckBoxController();

  @override
  Widget build(BuildContext context) {
    return FormWrapper(
      child: Form(
        key: widget._formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ..._buildList(),
            const SizedBox(
              height: 0,
            ),
            RoundedButton.gradient(
              'Guardar',
              onPressed: _verifyData,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return [
      StyledFormInput(
        label: 'Número teléfonico *',
        controller: widget._phoneNumberController,
        validator: FormValidators.isPhoneNumberAndRequired,
      ),
      StyledPasswordFormInput(
        label: 'Contraseña *',
        controller: widget._passwordController,
        validator: FormValidators.isValidPassowordAndRequired,
        displayIcon: false,
      ),
      const StyledText(
        'Se recomienda que la contraseña tenga 8 '
        'caracteres como mínimo una letra mayúscula y un número',
        type: StyledTextType.body1,
        textColor: FreeWayTheme.black,
      ),
      StyledPasswordFormInput(
        label: 'Repetir contraseña *',
        validator: (passwordConfirmation) => FormValidators.isRequired(
            passwordConfirmation,
            (passwordConfirmation) =>
                (widget._passwordController.text != passwordConfirmation)
                    ? 'Las contraseñas no coinciden'
                    : null),
        displayIcon: false,
      ),
      Row(
        children: [
          Checkbox(
              checkColor: Colors.white,
              value: checkBoxController.value,
              fillColor: MaterialStateProperty.resolveWith(
                  (states) => FreeWayTheme.officialBlue2),
              onChanged: (selected) =>
                  setState(() => checkBoxController.value = selected!)),
          Flexible(
            child: TextLink(
              text: 'Acepto los términos y condicioones de uso del servicio',
              onPressed: _displayTerms,
            ),
          ),
        ],
      )
    ].expand((w) => [w, const SizedBox(height: 15)]).toList();
  }

  void _verifyData() {
    if (widget._formKey.currentState?.validate() != true) {
      return showErrorDialog();
    }
    if (checkBoxController.value == false) {
      return showErrorDialog('Debe aceptar los términos y condiciones');
    }

    Get.find<SignUpViewModel>().userData = UserData(
      phoneNumber: widget._phoneNumberController.text,
      password: widget._passwordController.text,
    );
    widget.onSubmit();
  }

  void _displayTerms() {
    Get.dialog(
      BasicDialog(
        title: 'Términos y condiciones',
        content: SingleChildScrollView(
          child: Column(
            children: [
              const StyledText(
                _terms,
                type: StyledTextType.body1,
                textColor: FreeWayTheme.black,
              ),
              const SizedBox(height: 15.0),
              RoundedButton.gradient(
                'Acepto',
                onPressed: () {
                  setState(() {
                    checkBoxController.value = true;
                  });
                  Get.back();
                },
                size: RoundedButtonSize.long,
              ),
              const SizedBox(height: 15.0),
              RoundedButton.gray(
                'No acepto',
                onPressed: () {
                  setState(() {
                    checkBoxController.value = false;
                  });
                  Get.back();
                },
                size: RoundedButtonSize.long,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const _terms = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent aliquet at mi at pharetra. Cras felis mauris, interdum eget quam non, ultrices scelerisque urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin iaculis mi sit amet tortor faucibus tincidunt. Morbi dictum tempor purus, lacinia consequat risus malesuada in. Mauris ac ligula at purus vestibulum mollis sed sit amet urna. Quisque pretium, sapien non hendrerit pellentesque, urna nulla varius ex, ut porta sapien erat posuere justo. Maecenas et odio vitae nisi euismod elementum. Morbi sed urna vitae velit posuere imperdiet. Integer elementum ullamcorper mollis. Donec eu varius turpis. Quisque semper pellentesque dui, sit amet commodo orci. Phasellus libero dui, egestas a vestibulum quis, lobortis sit amet nibh.

Vivamus at dapibus metus, interdum aliquam nunc. Pellentesque dignissim, nisi et iaculis efficitur, diam velit pulvinar odio, ut auctor orci diam vel mi. Nulla eget facilisis est, nec convallis ipsum. Aliquam erat volutpat. Aliquam vehicula, felis ornare volutpat dapibus, ex ipsum tristique arcu, sed facilisis libero nibh vitae metus. Etiam ultricies tristique ligula vel finibus. Vivamus gravida nulla nulla, vel elementum lacus maximus quis. In hac habitasse platea dictumst. Fusce porta sed lectus sed ornare.

Sed eget mi porta lectus fringilla sagittis ac vitae risus. Integer metus est, placerat et ornare id, tincidunt nec turpis. Ut ultricies, purus eget lobortis maximus, risus ipsum feugiat quam, aliquet maximus ligula mauris congue felis. Quisque sodales pretium lorem. Integer ante turpis, tempor eget magna quis, tincidunt condimentum dolor. Etiam sagittis id nibh quis malesuada. Aliquam commodo libero id lectus ultrices malesuada eget et nisi. Nam in felis tempus, consequat urna at, venenatis tortor.''';

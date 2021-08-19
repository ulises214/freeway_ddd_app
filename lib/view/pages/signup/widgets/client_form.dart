import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/dalogs.dart/dialogs_manager.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../../../../model/enums/enums.dart';
import '../../../../model/user/client_data.dart';
import '../../../../models_view/signup/signup_model_view.dart';
import '../../../helpers/validators.dart';
import '../../../theme.dart';
import 'form_wrapper.dart';

/// Form to get the data of a user of type [UserType.client]
class ClientForm extends StatelessWidget {
  /// Creates a form for [UserType.client] type
  ClientForm({Key? key, required this.onSubmit}) : super(key: key);
  final DialogsManager _dialogsManager = Get.find();

  final _formKey = GlobalKey<FormState>();

  /// Callback to call when the user end the form
  final VoidCallback onSubmit;
  // ? Controllers
  final _binarySelectorController = BinarySelectorController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _businessNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FormWrapper(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ..._buildList(),
            const SizedBox(height: 0),
            RoundedButton.gradient(
              'Siguiente',
              onPressed: _verifyData,
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return [
      BinarySelector(
        label: const StyledText(
          'Seleccionar régimen fiscal *',
          type: StyledTextType.body1,
          textColor: FreeWayTheme.black,
        ),
        leftLabel: 'Persona física',
        rightLabel: 'Persona moral',
        controller: _binarySelectorController,
      ),
      StyledFormInput(
        label: 'Nombre completo *',
        controller: _nameController,
        validator: FormValidators.isRequired,
      ),
      StyledFormInput(
        label: 'Correo electrónico *',
        controller: _emailController,
        validator: FormValidators.isEmailAndRequired,
      ),
      StyledFormInput(
        label: 'Nombre de la empresa *',
        controller: _businessNameController,
        validator: FormValidators.isRequired,
      ),
    ].expand((w) => [w, const SizedBox(height: 15)]).toList();
  }

  void _verifyData() {
    if (_formKey.currentState?.validate() != true) {
      return _dialogsManager.showErrorDialog(text: 'Todos los datos son requeridos');
    }
    if (_binarySelectorController.value == null) {
      return _dialogsManager.showErrorDialog(text: 'El régimen fiscal es requerido');
    }
    _saveData();
  }

  void _saveData() {
    final personType = _binarySelectorController.value == BinarySelectorValues.left
        ? PersonType.physic
        : PersonType.moral;

    Get.find<SignUpViewModel>().clientData = ClientData(
      personType: personType,
      name: _nameController.text,
      email: _emailController.text,
      businessName: _businessNameController.text,
    );
    onSubmit();
  }
}

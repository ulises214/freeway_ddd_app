import 'package:flutter/material.dart';
import 'package:freeway_app/view/widgets/widgets.dart';
import 'package:get/get.dart';

import '../../../../model/enums/enums.dart';
import '../../../../model/user/models.dart';
import '../../../../models_view/signup/signup_model_view.dart';
import '../../../helpers/validators.dart';
import '../../../theme.dart';
import 'form_wrapper.dart';

/// Form for [CarrierData]
class CarrierForm extends StatelessWidget {
  /// Create a form to fill [CarrierData]
  CarrierForm({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  /// Function to call when fields are filled
  final VoidCallback onSubmit;

  final _formKey = GlobalKey<FormState>();
  // ? Controllers
  final _binarySelectorController = BinarySelectorController();
  final _filePickerController = FilePickerController();
  final _socialReasonController = TextEditingController();
  final _addresController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _emailController = TextEditingController();

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
        leftLabel: 'Persona física',
        rightLabel: 'Persona moral',
        label: const StyledText(
          'Seleccionar régimen fiscal',
          type: StyledTextType.body1,
          textColor: FreeWayTheme.black,
        ),
        controller: _binarySelectorController,
      ),
      StyledFormInput(
        label: 'Razón social',
        controller: _socialReasonController,
        validator: FormValidators.isOptional,
      ),
      StyledFormInput(
        label: 'Domicilio *',
        controller: _addresController,
        validator: FormValidators.isRequired,
      ),
      StyledFormInput(
        label: 'Nombre empresa *',
        controller: _businessNameController,
        validator: FormValidators.isRequired,
      ),
      StyledFormInput(
        label: 'Correo electronico *',
        controller: _emailController,
        validator: FormValidators.isEmailAndRequired,
      ),
      StyledFilePicker(
        controller: _filePickerController,
        label: 'Subir opinion de cumplimento *',
      ),
    ].expand((w) => [w, const SizedBox(height: 15)]).toList();
  }

  void _verifyData() {
    final personType = _getPersonType(_binarySelectorController.value);
    if (_formKey.currentState?.validate() != true ||
        _filePickerController.value == null) {
      return showErrorDialog('Todos los datos son requeridos');
    }
    if (FormValidators.isNullOrEmpty(_socialReasonController.text) &&
        personType == null) {
      return showErrorDialog('La razón social y el régimen fiscal no'
          ' pueden estar vacíos al mismo tiempo');
    }
    _saveData(personType);
  }

  void _saveData(PersonType? personType) {
    Get.find<SignUpViewModel>().carrierData = CarrierData(
        personType: personType,
        socialReason: _socialReasonController.text,
        address: _addresController.text,
        businessName: _businessNameController.text,
        email: _emailController.text,
        opinionCompliance: _filePickerController.value!);
    onSubmit();
  }

  PersonType? _getPersonType(BinarySelectorValues? binarySelectorValue) {
    switch (binarySelectorValue) {
      case BinarySelectorValues.left:
        return PersonType.physic;
      case BinarySelectorValues.right:
        return PersonType.moral;
      default:
        return null;
    }
  }
}

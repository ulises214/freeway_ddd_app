// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:freeway_app/view/widgets/widgets.dart';
import '../../../../model/enums/enums.dart';
import '../../../../models_view/signup/signup_model_view.dart';
import '../../../theme.dart';
import 'carrier_form.dart';
import 'client_form.dart';
import 'title.dart';
import 'user_data_form.dart';
import 'user_type_selector.dart';

final _stepTitles = ['Tipo de cuenta', 'Datos personales', 'Datos de la cuenta'];

/// Stepper form for signup form
///
/// Manage the current step
class SignUpFormBody extends StatefulWidget {
  /// Create the form stepper
  const SignUpFormBody({Key? key}) : super(key: key);
  @override
  _SignUpFormBodyState createState() => _SignUpFormBodyState();
}

class _SignUpFormBodyState extends State<SignUpFormBody> {
  int _currentStep = 0;
  late final SignUpViewModel _signupViewModel;
  @override
  void initState() {
    super.initState();
    _signupViewModel = Get.put(SignUpViewModel());
  }

  @override
  void dispose() {
    Get.delete<SignUpViewModel>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stepContents = _buildStepsContents();
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: SignUpTitle(),
        ),
        Expanded(
          child: Theme(
            data: Theme.of(context).copyWith(
                colorScheme:
                    Theme.of(context).colorScheme.copyWith(secondary: FreeWayTheme.extraBlue3)),
            child: Stepper(
              currentStep: _currentStep,
              type: StepperType.horizontal,
              onStepCancel: _currentStep > 0 ? _cancelStep : null,
              controlsBuilder: (_, {onStepCancel, onStepContinue}) {
                return _buildControllers(step: _currentStep, onStepCancel: onStepCancel);
              },
              steps:
                  List.generate(3, (index) => _buildStep(index, stepContents[index], _currentStep)),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildStepsContents() {
    return <Widget>[
      UserTypeSelector(
        onSelectType: _selectUserType,
      ),
      if (_signupViewModel.userType == UserType.client)
        ClientForm(
          onSubmit: _continueStep,
        ),
      if (_signupViewModel.userType == UserType.carrier)
        CarrierForm(
          onSubmit: _continueStep,
        ),
      if (_signupViewModel.userType == null) Container(),
      UserDataForm(
        onSubmit: _completeRegister,
      ),
    ];
  }

  void _completeRegister() {
    _signupViewModel.signup();
  }

  void _selectUserType(UserType userType) {
    _signupViewModel.userType = userType;
    setState(() {
      _currentStep = 1;
    });
  }

  void _cancelStep() {
    setState(() => _currentStep--);
  }

  void _continueStep() {
    setState(() => _currentStep++);
  }
}

StyledText _buildStepTitle(int index) {
  return StyledText(
    _stepTitles[index],
    type: StyledTextType.body1,
    textColor: FreeWayTheme.black,
  );
}

Step _buildStep(int index, Widget stepContent, int currentStep) {
  return Step(
    isActive: true,
    state: currentStep == index
        ? StepState.editing
        : currentStep < index
            ? StepState.disabled
            : StepState.complete,
    title: index == currentStep ? _buildStepTitle(index) : Container(),
    content: stepContent,
  );
}

Widget _buildControllers({VoidCallback? onStepCancel, required int step}) {
  return step > 0
      ? Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              TextLink(
                text: 'ATRÁS',
                onPressed: onStepCancel,
                textColor: FreeWayTheme.extraBlue1,
              ),
            ],
          ),
        )
      : Container();
}

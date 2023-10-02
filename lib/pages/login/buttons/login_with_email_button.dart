import 'package:vision_meet/index.dart';

class LoginWithEmailButton extends LoginWithButton {
  const LoginWithEmailButton({
    super.key,
    super.text = 'Email',
    super.icon = Icons.email,
    required super.agreedLicense,
    required super.onChanged,
  });
  @override
  void Function(BuildContext context)? get afterAgreed =>
      (context) => context.push(const LoginWithEmailPage());
}

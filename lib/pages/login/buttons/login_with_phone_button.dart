import 'package:vision_meet/index.dart';

class LoginWithPhoneButton extends LoginWithButton {
  const LoginWithPhoneButton({
    super.key,
    super.text = '手机号',
    super.icon = Icons.phone_android_rounded,
    required super.agreedLicense,
    required super.onChanged,
  });

  @override
  void Function(BuildContext context)? get afterAgreed =>
      (context) => context.push(const LoginWithPhonePage());
}

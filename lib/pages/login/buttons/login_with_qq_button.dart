import 'package:vision_meet/index.dart';

class LoginWithQQButton extends LoginWithButton {
  const LoginWithQQButton({
    super.key,
    super.text = 'QQ',
    super.icon = FontAwesomeIcons.qq,
    required super.agreedLicense,
    required super.onChanged,
  });

  @override
  void Function(BuildContext context)? get afterAgreed =>
      (context) => Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const LoginWithQQPage()),
          );
}

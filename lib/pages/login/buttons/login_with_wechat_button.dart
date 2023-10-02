import 'package:vision_meet/index.dart';

class LoginWithWeChatButton extends LoginWithButton {
  const LoginWithWeChatButton({
    super.key,
    super.text = '微信',
    super.icon = FontAwesomeIcons.weixin,
    required super.agreedLicense,
    required super.onChanged,
  });

  @override
  void Function(BuildContext context)? get afterAgreed =>
      (context) => context.push(const LoginWithWeChatPage());
}

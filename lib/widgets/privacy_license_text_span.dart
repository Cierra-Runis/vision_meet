import 'package:vision_meet/index.dart';

class PrivacyLicenseTextSpan extends TextSpan {
  const PrivacyLicenseTextSpan({
    required this.context,
    super.text = '《隐私协议》',
    super.style = const TextStyle(color: Colors.blueAccent),
  });

  final BuildContext context;

  @override
  GestureRecognizer? get recognizer => TapGestureRecognizer()
    ..onTap = () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(text ?? ''),
          ),
        );
}

import 'package:vision_meet/index.dart';

class ServiceLicenseTextSpan extends TextSpan {
  const ServiceLicenseTextSpan({
    required this.context,
    super.text = '《服务协议》',
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

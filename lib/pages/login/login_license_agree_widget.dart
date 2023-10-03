import 'package:vision_meet/index.dart';

class LoginLicenseAgreeWidget extends StatelessWidget {
  const LoginLicenseAgreeWidget({
    super.key,
    required this.agreedLicense,
    required this.onChanged,
  });

  final bool agreedLicense;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: agreedLicense,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: onChanged,
      title: RichText(
        text: TextSpan(
          text: '我已阅读并同意',
          style: TextStyle(color: context.colorScheme.onBackground),
          children: [
            ServiceLicenseTextSpan(context: context),
            const TextSpan(text: '和'),
            PrivacyLicenseTextSpan(context: context),
          ],
        ),
      ),
    );
  }
}

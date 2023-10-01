import 'package:vision_meet/index.dart';

class LoginWithButton extends StatelessWidget {
  const LoginWithButton({
    super.key,
    required this.text,
    required this.agreedLicense,
    required this.onChanged,
    required this.icon,
    this.afterAgreed,
  });

  final void Function(BuildContext context)? afterAgreed;
  final IconData? icon;
  final bool agreedLicense;
  final ValueChanged<bool?>? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filledTonal(
          onPressed: () async {
            if (agreedLicense) return afterAgreed?.call(context);

            bool? agreed = await showDialog<bool?>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('服务协议和隐私条款'),
                content: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    text: '为保障你的合法权益，请阅读并同意',
                    children: [
                      ServiceLicenseTextSpan(context: context),
                      const TextSpan(text: '和'),
                      PrivacyLicenseTextSpan(context: context),
                    ],
                  ),
                ),
                actions: [
                  const CancelTextButton(),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('同意'),
                  ),
                ],
              ),
            );

            if (agreed == true && context.mounted) {
              onChanged?.call(agreed);
              Future.delayed(
                const Duration(milliseconds: 200),
                () => afterAgreed?.call(context),
              );
            }
          },
          icon: Icon(icon),
          padding: const EdgeInsets.all(14),
        ),
        Text(text),
      ],
    );
  }
}

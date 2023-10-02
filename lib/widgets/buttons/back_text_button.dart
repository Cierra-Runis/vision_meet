import 'package:vision_meet/index.dart';

class BackTextButton extends StatelessWidget {
  const BackTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: Text(
        MaterialLocalizations.of(context).backButtonTooltip,
      ),
    );
  }
}

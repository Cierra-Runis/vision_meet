import 'package:vision_meet/index.dart';

class CancelTextButton extends StatelessWidget {
  const CancelTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: Text(
        MaterialLocalizations.of(context).cancelButtonLabel,
      ),
    );
  }
}

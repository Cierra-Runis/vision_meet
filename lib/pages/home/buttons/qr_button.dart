import 'package:vision_meet/index.dart';

class QRButton extends StatelessWidget {
  const QRButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.push(const QRPage()),
      icon: const Badge(
        child: Icon(
          Icons.qr_code_scanner_rounded,
        ),
      ),
    );
  }
}

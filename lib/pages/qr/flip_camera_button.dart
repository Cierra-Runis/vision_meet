import 'package:vision_meet/index.dart';

class FlipCameraButton extends StatelessWidget {
  const FlipCameraButton({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: controller.switchCamera,
      icon: const Icon(Icons.flip_rounded),
    );
  }
}

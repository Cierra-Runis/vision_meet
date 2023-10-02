import 'package:vision_meet/index.dart';

class FlashLightButton extends StatelessWidget {
  const FlashLightButton({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    final cutOutSize = MediaQuery.of(context).size.shortestSide * 2 / 3;

    return Positioned(
      left: 0,
      right: 0,
      bottom: cutOutSize * 2 / 3,
      child: Center(
        child: IconButton(
          iconSize: 48,
          onPressed: controller.toggleTorch,
          icon: ValueListenableBuilder(
            valueListenable: controller.torchState,
            builder: (context, state, child) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: Icon(
                state == TorchState.on
                    ? Icons.flashlight_on_rounded
                    : Icons.flashlight_off_rounded,
                key: ValueKey(state),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

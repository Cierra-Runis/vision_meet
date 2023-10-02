import 'package:vision_meet/index.dart';

class QRPage extends StatefulWidget {
  const QRPage({super.key});

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  final _controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.unrestricted,
  );

  @override
  void initState() {
    super.initState();
    // TIPS: To fix [https://github.com/juliansteenbakker/mobile_scanner/issues/699]
    _controller.stop();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onDetect(BarcodeCapture barcode) async {
    _controller.stop();
    // TODO: analyze barcode
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('$barcode'),
      ),
    );
    _controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          SelectImageButton(controller: _controller),
          FlipCameraButton(controller: _controller),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MobileScanner(
            controller: _controller,
            onDetect: onDetect,
            errorBuilder: (p0, p1, p2) => const Center(
              child: Text('相机不可用'),
            ),
          ),
          FlashLightButton(controller: _controller),
        ],
      ),
    );
  }
}

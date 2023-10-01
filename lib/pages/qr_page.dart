import 'package:vision_meet/index.dart';

class QRPage extends StatefulWidget {
  const QRPage({super.key});

  @override
  State<StatefulWidget> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  QRViewController? _controller;
  final GlobalKey _qrKey = GlobalKey();

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) _controller!.pauseCamera();
    _controller!.resumeCamera();
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() => _controller = controller);
    controller.scannedDataStream.listen(
      (scanData) async {
        if (scanData.code != null) {
          _controller?.pauseCamera();
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(scanData.code!),
            ),
          );
          _controller?.resumeCamera();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cutOutSize = MediaQuery.of(context).size.shortestSide * 2 / 3;
    final borderColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_library_outlined),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          QRView(
            key: _qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: borderColor,
              borderRadius: cutOutSize / 12,
              borderLength: cutOutSize / 6,
              borderWidth: 8,
              cutOutSize: cutOutSize,
            ),
            onPermissionSet: (ctrl, p) {
              if (!p) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('no Permission')),
                );
              }
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: cutOutSize * 2 / 3,
            child: Center(
              child: IconButton(
                onPressed: () async {
                  await _controller?.toggleFlash();
                  setState(() {});
                },
                icon: FutureBuilder(
                  future: _controller?.getFlashStatus(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return const Text('扫描二维码');
                    return Icon(
                      snapshot.data!
                          ? Icons.flashlight_on_rounded
                          : Icons.flashlight_off_rounded,
                      size: 48,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

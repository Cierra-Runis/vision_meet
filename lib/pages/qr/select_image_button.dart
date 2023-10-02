import 'package:vision_meet/index.dart';

class SelectImageButton extends StatelessWidget {
  const SelectImageButton({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.photo_library_outlined),
      onPressed: () async {
        final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );
        if (image != null) {
          await controller.analyzeImage(image.path);
        }
      },
    );
  }
}

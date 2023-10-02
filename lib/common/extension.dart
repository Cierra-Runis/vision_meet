import 'package:vision_meet/index.dart';

extension PlatformExtension on Platform {
  static final isMobile = Platform.isAndroid || Platform.isIOS;
}

extension BuildContextExtension on BuildContext {
  Future<T?> push<T extends Object?>(Widget page) =>
      Navigator.push(this, CupertinoPageRoute<T>(builder: (context) => page));
}

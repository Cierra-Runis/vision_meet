import 'package:vision_meet/index.dart';

extension PlatformExtension on Platform {
  static final isMobile = Platform.isAndroid || Platform.isIOS;
}

extension BuildContextExtension on BuildContext {
  Future<T?> push<T extends Object?>(Widget page) =>
      Navigator.push(this, CupertinoPageRoute<T>(builder: (context) => page));

  void pop<T extends Object?>([T? result]) => Navigator.pop(this, result);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  Brightness get brightness => colorScheme.brightness;
}

extension BrightnessExtension on Brightness {
  bool get isDark => this == Brightness.dark;
  bool get isLight => this == Brightness.light;
}

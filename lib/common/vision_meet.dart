import 'package:vision_meet/index.dart';

class VisionMeet {
  const VisionMeet._();
  static const appName = 'Vision Meet';

  static void run() async {
    WidgetsFlutterBinding.ensureInitialized();

    if (Platform.isAndroid) {
      await FlutterDisplayMode.setHighRefreshRate();
    }

    runApp(const VisionMeetApp());
  }
}

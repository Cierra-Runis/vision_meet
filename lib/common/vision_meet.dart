import 'package:vision_meet/index.dart';
import 'dart:developer' as devtools show log;

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

  static void printLog(dynamic log) =>
      devtools.log(log, time: DateTime.now(), name: 'VisionMeet');
}

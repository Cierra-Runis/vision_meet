import 'package:vision_meet/index.dart';

void main() => VisionMeet.run();

class VisionMeetApp extends StatelessWidget {
  const VisionMeetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: VisionMeet.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 1),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 1),
      ),
      scrollBehavior: const CupertinoScrollBehavior(),
      home: const LoginPage(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('zh', 'CN'),
      ],
    );
  }
}

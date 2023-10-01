import 'package:vision_meet/index.dart';

class LoginSettingPage extends StatelessWidget {
  const LoginSettingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: const BasedListView(
        children: [LoginSettingSection()],
      ),
    );
  }
}

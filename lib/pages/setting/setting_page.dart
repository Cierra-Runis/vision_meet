import 'package:vision_meet/index.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: const BasedListView(
        children: [
          AudioSettingSection(),
          VideoSettingSection(),
          GeneralSettingSection(),
          LoginSettingSection(),
        ],
      ),
    );
  }
}

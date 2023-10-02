import 'package:vision_meet/index.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.settings_rounded,
      titleText: '设置',
      onTap: () => context.push(const SettingPage()),
    );
  }
}

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
        children: [
          BasedListSection(
            children: [
              BasedListTile(
                leadingIcon: Icons.wifi_rounded,
                titleText: '网络检测',
              ),
              BasedListTile(
                leadingIcon: FontAwesomeIcons.p,
                titleText: '代理设置',
              ),
              BasedListTile(
                leadingIcon: Icons.cleaning_services_rounded,
                titleText: '应用缓存清理',
              ),
              BasedListTile(
                leadingIcon: Icons.new_releases_rounded,
                titleText: '检查更新',
              ),
              BasedListTile(
                leadingIcon: Icons.info_outline_rounded,
                titleText: '关于我们',
              )
            ],
          )
        ],
      ),
    );
  }
}

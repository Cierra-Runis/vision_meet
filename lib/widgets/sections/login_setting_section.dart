import 'package:vision_meet/index.dart';

class LoginSettingSection extends StatelessWidget {
  const LoginSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListSection(
      children: [
        BasedListTile(
          leadingIcon: Icons.wifi_rounded,
          titleText: '网络检测',
          onTap: () {},
        ),
        BasedListTile(
          leadingIcon: FontAwesomeIcons.p,
          titleText: '代理设置',
          onTap: () {},
        ),
        BasedListTile(
          leadingIcon: Icons.cleaning_services_rounded,
          titleText: '应用缓存清理',
          onTap: () {},
        ),
        const NewReleaseTile(),
        const AboutUsTile(),
      ],
    );
  }
}

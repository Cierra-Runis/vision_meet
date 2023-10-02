import 'package:vision_meet/index.dart';

class LogoutTile extends StatelessWidget {
  const LogoutTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.logout_rounded,
      titleText: '退出登录',
      onTap: () => Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(
          builder: (context) => const LoginPage(),
        ),
        (_) => false,
      ),
    );
  }
}

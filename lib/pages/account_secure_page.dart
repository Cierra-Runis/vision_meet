import 'package:vision_meet/index.dart';

class AccountSecurePage extends StatelessWidget {
  const AccountSecurePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('账号与安全')),
      body: const BasedListView(
        children: [
          BasedListSection(
            children: [
              LinkPhoneNumberTile(),
              LinkQQTile(),
              LinkWeChatTile(),
              LinkEmailTile(),
            ],
          ),
          BasedListSection(
            children: [
              ChangePasswordTile(),
              DevicesTile(),
            ],
          ),
          BasedListSection(
            children: [
              DeleteAccountTile(),
            ],
          ),
        ],
      ),
    );
  }
}

class ChangePasswordTile extends StatelessWidget {
  const ChangePasswordTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.password_rounded,
      titleText: '登录密码',
      onTap: () {},
    );
  }
}

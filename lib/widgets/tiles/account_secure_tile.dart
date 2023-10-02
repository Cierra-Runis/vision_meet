import 'package:vision_meet/index.dart';

class AccountSecureTile extends StatelessWidget {
  const AccountSecureTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.security_rounded,
      titleText: '账号与安全',
      onTap: () => context.push(const AccountSecurePage()),
    );
  }
}

class AccountSecurePage extends StatelessWidget {
  const AccountSecurePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('账号与安全')),
      body: BasedListView(
        children: [
          BasedListSection(
            children: [
              BasedListTile(
                leadingIcon: Icons.phone_android_rounded,
                titleText: '手机号',
                detailText: '+86 100****0000',
                onTap: () {},
              ),
              BasedListTile(
                leadingIcon: FontAwesomeIcons.qq,
                titleText: '微信',
                detailText: '***',
                onTap: () {},
              ),
              BasedListTile(
                leadingIcon: FontAwesomeIcons.weixin,
                titleText: '微信',
                detailText: '***',
                onTap: () {},
              ),
              BasedListTile(
                leadingIcon: Icons.email_rounded,
                titleText: '邮箱',
                detailText: '***@**.**',
                onTap: () {},
              ),
            ],
          ),
          BasedListSection(
            children: [
              BasedListTile(
                leadingIcon: Icons.password_rounded,
                titleText: '登录密码',
                onTap: () {},
              ),
              BasedListTile(
                leadingIcon: Icons.devices_rounded,
                titleText: '登录设备',
                onTap: () {},
              ),
            ],
          ),
          BasedListSection(
            children: [
              BasedListTile(
                leadingIcon: Icons.no_accounts_rounded,
                titleText: '注销账号',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

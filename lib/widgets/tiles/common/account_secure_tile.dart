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

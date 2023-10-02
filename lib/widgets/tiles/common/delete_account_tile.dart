import 'package:vision_meet/index.dart';

class DeleteAccountTile extends StatelessWidget {
  const DeleteAccountTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.no_accounts_rounded,
      titleText: '删除账号',
      onTap: () {},
    );
  }
}

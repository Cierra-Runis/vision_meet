import 'package:vision_meet/index.dart';

class LinkEmailTile extends StatelessWidget {
  const LinkEmailTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.email_rounded,
      titleText: '邮箱',
      detailText: '***@**.**',
      onTap: () {},
    );
  }
}

import 'package:vision_meet/index.dart';

class ProfileCardTile extends StatelessWidget {
  const ProfileCardTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.badge_rounded,
      titleText: '我的名片',
      onTap: () {},
    );
  }
}

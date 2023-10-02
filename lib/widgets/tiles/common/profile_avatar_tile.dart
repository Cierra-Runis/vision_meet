import 'package:vision_meet/index.dart';

class ProfileAvatarTile extends StatelessWidget {
  const ProfileAvatarTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.account_box_rounded,
      titleText: '头像',
      detail: const BasedAvatar(),
      onTap: () {},
    );
  }
}

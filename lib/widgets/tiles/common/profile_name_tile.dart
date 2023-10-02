import 'package:vision_meet/index.dart';

class ProfileNameTile extends StatelessWidget {
  const ProfileNameTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.draw_rounded,
      titleText: '名称',
      detailText: 'User.name',
      onTap: () {},
    );
  }
}

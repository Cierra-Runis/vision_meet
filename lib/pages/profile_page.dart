import 'package:vision_meet/index.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('个人信息')),
      body: BasedListView(
        children: [
          BasedListSection(
            children: [
              BasedListTile(
                leadingIcon: Icons.account_box_rounded,
                titleText: '头像',
                detail: const BasedAvatar(),
                onTap: () {},
              ),
              BasedListTile(
                leadingIcon: Icons.draw_rounded,
                titleText: '名称',
                detailText: 'User.name',
                onTap: () {},
              ),
            ],
          ),
          BasedListSection(
            children: [
              BasedListTile(
                leadingIcon: Icons.badge_rounded,
                titleText: '我的名片',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

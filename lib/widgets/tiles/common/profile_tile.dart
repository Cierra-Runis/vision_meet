import 'package:vision_meet/index.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leading: const BasedAvatar(),
      titleText: 'User.name',
      detail: const Badge(label: Text('免费版')),
      onTap: () => context.push(const ProfilePage()),
    );
  }
}

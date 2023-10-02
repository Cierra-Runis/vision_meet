import 'package:vision_meet/index.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('个人信息')),
      body: const BasedListView(
        children: [
          BasedListSection(
            children: [
              ProfileAvatarTile(),
              ProfileNameTile(),
            ],
          ),
          BasedListSection(
            children: [
              ProfileCardTile(),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:vision_meet/index.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: BasedListView(
          children: [
            const ProfileTile(),
            BasedListSection(
              elevation: 0,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.home_filled,
                            ),
                            Text('个人会议'),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.movie_rounded,
                            ),
                            Text('我的录制'),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(
                              Icons.book_rounded,
                            ),
                            Text('我的笔记'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const BasedListSection(
              elevation: 0,
              children: [
                AccountSecureTile(),
                SettingTile(),
                HelpServiceTile(),
                AboutUsTile(),
              ],
            ),
            const BasedListSection(
              elevation: 0,
              children: [
                LogoutTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

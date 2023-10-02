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
            BasedListTile(
              leading: const BasedAvatar(),
              titleText: 'User.name',
              detail: const Badge(label: Text('免费版')),
              onTap: () => context.push(const ProfilePage()),
            ),
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
            BasedListSection(
              elevation: 0,
              children: [
                BasedListTile(
                  leadingIcon: Icons.security_rounded,
                  titleText: '账号与安全',
                  onTap: () {},
                ),
                BasedListTile(
                  leadingIcon: Icons.settings_rounded,
                  titleText: '设置',
                  onTap: () => context.push(const SettingPage()),
                ),
                BasedListTile(
                  leadingIcon: Icons.help_center_rounded,
                  titleText: '帮助与客服',
                  onTap: () {},
                ),
                const AboutUsTile(),
              ],
            ),
            BasedListSection(
              elevation: 0,
              children: [
                BasedListTile(
                  leadingIcon: Icons.logout_rounded,
                  titleText: '退出登录',
                  onTap: () => Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (_) => false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:vision_meet/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: HomePageLeadingAvatar(),
        ),
        title: const Text('User.name'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Badge(
              child: Icon(
                Icons.email_rounded,
              ),
            ),
          ),
          if (Platform.isAndroid || Platform.isIOS)
            IconButton(
              onPressed: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const QRPage(),
                ),
              ),
              icon: const Badge(
                child: Icon(
                  Icons.qr_code_scanner_rounded,
                ),
              ),
            ),
        ],
      ),
      drawer: const HomePageDrawer(),
      body: Column(
        children: [
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
                            Icons.add_rounded,
                          ),
                          Text('加入会议'),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Column(
                        children: [
                          Icon(
                            Icons.electric_bolt_rounded,
                          ),
                          Text('快速会议'),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Column(
                        children: [
                          Icon(
                            Icons.calendar_month_rounded,
                          ),
                          Text('预订会议'),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Column(
                        children: [
                          Icon(
                            Icons.screen_share_rounded,
                          ),
                          Text('共享屏幕'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(indent: 8, endIndent: 8),
          Expanded(
            child: true
                ? ExpandableListView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    builder: SliverExpandableChildDelegate(
                      sectionList: [
                        Section(header: '今天 10月1日', items: [10, 10, 10, 10]),
                        Section(header: '今天 10月1日', items: [10, 10, 10, 10]),
                        Section(header: '今天 10月1日', items: [10, 10, 10, 10]),
                        Section(header: '今天 10月1日', items: [10, 10, 10, 10]),
                      ],
                      headerBuilder: (context, sectionIndex, index) =>
                          Text('$sectionIndex $index'),
                      itemBuilder: (context, sectionIndex, itemIndex, index) =>
                          Text('$sectionIndex $itemIndex $index'),
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.coffee_rounded,
                          size: 96,
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        const Text('暂无会议'),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class Section<T, R> extends ExpandableListSection {
  final R header;
  final List<T> items;

  Section({required this.header, required this.items});

  @override
  List<T> getItems() => items;

  @override
  bool isSectionExpanded() => true;

  @override
  void setSectionExpanded(bool expanded) {}
}

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
              leading: const HomePageLeadingAvatar(),
              titleText: 'User.name',
              detail: const Badge(label: Text('免费版')),
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              ),
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
                  onTap: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const SettingPage(),
                    ),
                  ),
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

class AboutUsTile extends StatelessWidget {
  const AboutUsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.info_outline_rounded,
      titleText: '关于我们',
      onTap: () => showDialog(
        context: context,
        builder: (context) => const AboutUsPage(),
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const AppIconWidget(),
      content: BasedListView(
        children: [
          BasedListSection(
            elevation: 0,
            children: [
              const NewReleaseTile(),
              BasedListTile(
                leadingIcon: Icons.fiber_new_rounded,
                titleText: '版本介绍',
                onTap: () {},
              ),
              BasedListTile(
                leadingIcon: Icons.auto_awesome_rounded,
                titleText: '打分评价',
                onTap: () {},
              ),
            ],
          ),
        ],
      ).adaptAlertDialog,
      contentPadding: const EdgeInsets.only(top: 16),
      actions: const [
        BackTextButton(),
      ],
    );
  }
}

class NewReleaseTile extends StatelessWidget {
  const NewReleaseTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.new_releases_rounded,
      titleText: '检查更新',
      onTap: () {},
    );
  }
}

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
                detail: const HomePageLeadingAvatar(),
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

class HomePageLeadingAvatar extends StatelessWidget {
  const HomePageLeadingAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Scaffold.of(context).openDrawer,
      child: const Badge(
        alignment: Alignment.bottomRight,
        label: FaIcon(
          FontAwesomeIcons.solidStar,
          size: 10,
          color: true ? Colors.amber : Colors.grey,
        ),
        backgroundColor: Colors.transparent,
        child: CircleAvatar(
          radius: 20,
          child: Text('RC'),
        ),
      ),
    );
  }
}

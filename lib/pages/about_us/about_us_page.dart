import 'package:vision_meet/index.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('关于我们')),
      body: Column(
        children: [
          const Expanded(
            child: Center(child: AppIcon()),
          ),
          Expanded(
            flex: 3,
            child: BasedListView(
              children: [
                BasedListSection(
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
            ),
          ),
          TextButton(
            onPressed: () => context.push(const LicensePage()),
            child: Text(MaterialLocalizations.of(context).licensesPageTitle),
          ),
        ],
      ),
    );
  }
}

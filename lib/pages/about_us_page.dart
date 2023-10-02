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
          const Expanded(
            flex: 3,
            child: BasedListView(
              children: [
                BasedListSection(
                  children: [
                    NewReleaseTile(),
                    VersionIntroTile(),
                    ScoringTile(),
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

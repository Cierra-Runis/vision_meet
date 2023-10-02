import 'package:vision_meet/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: get data from backend
    final sectionList = [
      Section(header: '今天 10月1日', items: ['你好', 10, 10, 10]),
      Section(header: '今天 9月30日', items: [10, '你好', 10, 10]),
      Section(header: '今天 8月24日', items: [10, 10, '你好', 10]),
      Section(header: '今天 6月18日', items: [10, 10, 10, '你好']),
    ];

    bool hasMeet = sectionList.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: HomePageLeadingAvatar(),
        ),
        title: const Text('User.name'),
        centerTitle: false,
        actions: [
          const NoticeBoxButton(),
          if (PlatformExtension.isMobile) const QRButton(),
        ],
      ),
      drawer: const HomePageDrawer(),
      body: Column(
        children: [
          const BasedListSection(
            elevation: 0,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    JoinMeetButton(),
                    QuickMeetButton(),
                    ScheduleMeetButton(),
                    ShareScreenButton(),
                  ],
                ),
              ),
            ],
          ),
          const Divider(indent: 8, endIndent: 8),
          Expanded(
            child: hasMeet
                ? ExpandableListView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    builder: SliverExpandableChildDelegate(
                      sectionList: sectionList,
                      headerBuilder: (context, sectionIndex, _) =>
                          Text(sectionList[sectionIndex].header),
                      itemBuilder: (context, sectionIndex, itemIndex, _) {
                        final section = sectionList[sectionIndex];
                        return Text(
                          '${section.items[itemIndex]}',
                        );
                      },
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

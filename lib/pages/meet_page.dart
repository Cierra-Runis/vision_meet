import 'package:vision_meet/index.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            bool single = true;
            if (single) {
              showModalBottomSheet(
                context: context,
                builder: (context) => BottomSheet(
                  onClosing: () {},
                  enableDrag: false,
                  clipBehavior: Clip.antiAlias,
                  builder: (BuildContext context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // TODO: Implement the logic
                      BasedListTile(
                        titleText: '你好',
                        onTap: () {
                          context.pop();
                          context.pop();
                        },
                      ),
                      BasedListTile(
                        titleText: '你好',
                        onTap: () {
                          context.pop();
                          context.pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            }
          },
          child: const Text(
            '结束',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: const Text(VisionMeet.appName),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.zoom_in_map_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              true ? CupertinoIcons.speaker_2_fill : CupertinoIcons.ear,
            ),
          ),
        ],
      ),
      body: const Center(
        child: BasedAvatar(),
      ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.mic_rounded),
            label: '静音',
          ),
          NavigationDestination(
            icon: Icon(Icons.videocam_off_rounded),
            label: '开启视频',
          ),
          NavigationDestination(
            icon: Icon(Icons.screen_share_rounded),
            label: '共享屏幕',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_rounded),
            label: '管理成员(1)',
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz_rounded),
            label: '更多',
          ),
        ],
      ),
    );
  }
}

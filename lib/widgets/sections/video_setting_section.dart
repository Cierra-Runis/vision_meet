import 'package:vision_meet/index.dart';

class VideoSettingSection extends StatelessWidget {
  const VideoSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListSection(
      titleText: '视频',
      children: [
        VideoEnableTile(
          value: true,
          onChanged: (value) {},
        ),
        const VirtualBackgroundTile(),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: CupertinoIcons.square_split_2x1,
          titleText: '视频镜像',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.videocam_rounded,
          titleText: '视频降噪',
          subtitleText: '实时减少视频画面噪点，使画面更清晰',
        ),
      ],
    );
  }
}

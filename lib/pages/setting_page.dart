import 'package:vision_meet/index.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: const BasedListView(
        children: [
          AudioSettingSection(),
          VideoSettingSection(),
          GeneralSettingSection(),
          LoginSettingSection(),
        ],
      ),
    );
  }
}

class GeneralSettingSection extends StatelessWidget {
  const GeneralSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListSection(
      titleText: '通用',
      children: [
        const BasedListTile(
          leadingIcon: Icons.color_lens_rounded,
          titleText: '深色模式',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.notifications_rounded,
          titleText: '接受消息通知',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.timelapse_rounded,
          titleText: '显示参会时长',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.highlight_rounded,
          titleText: '语音激励',
          subtitleText: '优先显示正在说话的与会成员',
        ),
      ],
    );
  }
}

class VideoSettingSection extends StatelessWidget {
  const VideoSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListSection(
      titleText: '视频',
      children: [
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.videocam_rounded,
          titleText: '入会开启摄像头',
        ),
        const BasedListTile(
          leadingIcon: Icons.wallpaper_rounded,
          titleText: '虚拟背景',
        ),
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

class AudioSettingSection extends StatelessWidget {
  const AudioSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListSection(
      titleText: '音频',
      children: [
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.mic_rounded,
          titleText: '入会开启麦克风',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.speaker_rounded,
          titleText: '入会开启扬声器',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.window_rounded,
          titleText: '开启麦克风浮窗',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.notifications_active_rounded,
          titleText: '开麦时播放提示音',
        ),
        BasedSwitchListTile(
          value: true,
          onChanged: (value) {},
          leadingIcon: Icons.mic_rounded,
          titleText: '音频降噪',
          subtitleText: '在嘈杂环境里，让对方更清晰地听到您的声音',
        ),
      ],
    );
  }
}

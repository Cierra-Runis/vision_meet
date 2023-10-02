import 'package:vision_meet/index.dart';

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

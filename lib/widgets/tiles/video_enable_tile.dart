import 'package:vision_meet/index.dart';

class VideoEnableTile extends StatelessWidget {
  const VideoEnableTile({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return BasedSwitchListTile(
      value: value,
      onChanged: onChanged,
      leadingIcon: Icons.videocam_rounded,
      titleText: '入会开启摄像头',
    );
  }
}

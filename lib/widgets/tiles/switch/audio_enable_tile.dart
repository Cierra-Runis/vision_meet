import 'package:vision_meet/index.dart';

class MicEnableTile extends StatelessWidget {
  const MicEnableTile({
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
      leadingIcon: Icons.mic_rounded,
      titleText: '入会开启麦克风',
    );
  }
}

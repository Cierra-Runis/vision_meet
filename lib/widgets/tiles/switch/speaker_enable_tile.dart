import 'package:vision_meet/index.dart';

class SpeakerEnableTile extends StatelessWidget {
  const SpeakerEnableTile({
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
      leadingIcon: Icons.speaker_rounded,
      titleText: '入会开启扬声器',
    );
  }
}

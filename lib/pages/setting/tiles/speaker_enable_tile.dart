import 'package:vision_meet/index.dart';

class SpeakerEnableTile extends StatelessWidget {
  const SpeakerEnableTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedSwitchListTile(
      value: true,
      onChanged: (value) {},
      leadingIcon: Icons.speaker_rounded,
      titleText: '入会开启扬声器',
    );
  }
}

import 'package:vision_meet/index.dart';

class MicEnableTile extends StatelessWidget {
  const MicEnableTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedSwitchListTile(
      value: true,
      onChanged: (value) {},
      leadingIcon: Icons.mic_rounded,
      titleText: '入会开启麦克风',
    );
  }
}

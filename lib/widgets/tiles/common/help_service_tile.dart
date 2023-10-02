import 'package:vision_meet/index.dart';

class HelpServiceTile extends StatelessWidget {
  const HelpServiceTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.help_center_rounded,
      titleText: '帮助与客服',
      onTap: () {},
    );
  }
}

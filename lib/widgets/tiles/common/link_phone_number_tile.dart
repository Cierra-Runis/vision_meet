import 'package:vision_meet/index.dart';

class LinkPhoneNumberTile extends StatelessWidget {
  const LinkPhoneNumberTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.phone_android_rounded,
      titleText: '手机号',
      detailText: '+86 100****0000',
      onTap: () {},
    );
  }
}

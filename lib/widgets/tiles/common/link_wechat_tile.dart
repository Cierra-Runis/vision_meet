import 'package:vision_meet/index.dart';

class LinkWeChatTile extends StatelessWidget {
  const LinkWeChatTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: FontAwesomeIcons.weixin,
      titleText: '微信',
      detailText: '***',
      onTap: () {},
    );
  }
}

import 'package:vision_meet/index.dart';

class NetworkDetectTile extends StatelessWidget {
  const NetworkDetectTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.wifi_rounded,
      titleText: '网络检测',
      onTap: () {},
    );
  }
}

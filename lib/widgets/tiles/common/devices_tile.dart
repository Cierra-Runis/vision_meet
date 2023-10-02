import 'package:vision_meet/index.dart';

class DevicesTile extends StatelessWidget {
  const DevicesTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.devices_rounded,
      titleText: '登录设备',
      onTap: () {},
    );
  }
}

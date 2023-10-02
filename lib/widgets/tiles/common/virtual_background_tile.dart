import 'package:vision_meet/index.dart';

class VirtualBackgroundTile extends StatelessWidget {
  const VirtualBackgroundTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BasedListTile(
      leadingIcon: Icons.wallpaper_rounded,
      titleText: '虚拟背景',
      onTap: () {},
    );
  }
}

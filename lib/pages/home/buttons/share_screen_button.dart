import 'package:vision_meet/index.dart';

class ShareScreenButton extends StatelessWidget {
  const ShareScreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Column(
        children: [
          Icon(
            Icons.screen_share_rounded,
          ),
          Text('共享屏幕'),
        ],
      ),
    );
  }
}

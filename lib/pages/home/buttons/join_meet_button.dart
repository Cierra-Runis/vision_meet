import 'package:vision_meet/index.dart';

class JoinMeetButton extends StatelessWidget {
  const JoinMeetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Column(
        children: [
          Icon(
            Icons.add_rounded,
          ),
          Text('加入会议'),
        ],
      ),
    );
  }
}

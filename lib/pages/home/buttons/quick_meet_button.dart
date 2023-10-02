import 'package:vision_meet/index.dart';

class QuickMeetButton extends StatelessWidget {
  const QuickMeetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Column(
        children: [
          Icon(
            Icons.electric_bolt_rounded,
          ),
          Text('快速会议'),
        ],
      ),
    );
  }
}

import 'package:vision_meet/index.dart';

class ScheduleMeetButton extends StatelessWidget {
  const ScheduleMeetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Column(
        children: [
          Icon(
            Icons.calendar_month_rounded,
          ),
          Text('预订会议'),
        ],
      ),
    );
  }
}

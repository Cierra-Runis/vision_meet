import 'package:vision_meet/index.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          'assets/images/icon.svg',
          height: 72,
          placeholderBuilder: (context) => const SizedBox(height: 72),
          colorFilter: ColorFilter.mode(
            colorScheme.onBackground,
            BlendMode.srcIn,
          ),
        ),
        const Text(
          VisionMeet.appName,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

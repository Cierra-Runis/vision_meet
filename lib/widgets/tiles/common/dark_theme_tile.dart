import 'package:vision_meet/index.dart';

class DarkThemeTile extends StatelessWidget {
  const DarkThemeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BasedListTile(
      leadingIcon: Icons.color_lens_rounded,
      titleText: '深色模式',
    );
  }
}

import 'package:vision_meet/index.dart';

import '../../notice_box_page.dart';

class NoticeBoxButton extends StatelessWidget {
  const NoticeBoxButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.push(const NoticeBoxPage()),
      icon: const Badge(
        child: Icon(
          Icons.email_rounded,
        ),
      ),
    );
  }
}

import 'package:vision_meet/index.dart';

class NoticeBoxPage extends StatelessWidget {
  const NoticeBoxPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('我的消息')),
      body: const BasedListView(),
    );
  }
}

import 'package:vision_meet/index.dart';

class JoinMeetPage extends StatefulWidget {
  const JoinMeetPage({
    super.key,
  });

  @override
  State<JoinMeetPage> createState() => _JoinMeetPageState();
}

class _JoinMeetPageState extends State<JoinMeetPage> {
  late bool _enableVideo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('加入会议'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BasedListView(
              children: [
                BasedListSection(
                  itemPadding: const EdgeInsets.all(16),
                  separator: const SizedBox(),
                  children: [
                    const TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: '请输入会议号',
                        border: OutlineInputBorder(),
                        labelText: '会议号',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    TextField(
                      controller: TextEditingController(text: 'User.name'),
                      decoration: const InputDecoration(
                        hintText: '请输入您的名称',
                        border: OutlineInputBorder(),
                        labelText: '您的名称',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                  ],
                ),
                BasedListSection(
                  children: [
                    MicEnableTile(
                      value: true,
                      onChanged: (value) {},
                    ),
                    SpeakerEnableTile(
                      value: true,
                      onChanged: (value) {},
                    ),
                    VideoEnableTile(
                      value: _enableVideo,
                      onChanged: (value) =>
                          setState(() => _enableVideo = value),
                    ),
                    if (_enableVideo) const VirtualBackgroundTile(),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: FilledButton(
              onPressed: () => context.push(const MeetPage()),
              child: const Text('加入会议'),
            ),
          ),
        ],
      ),
    );
  }
}

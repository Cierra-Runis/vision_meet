import 'package:vision_meet/index.dart';

class LoginWithPhonePage extends StatefulWidget {
  const LoginWithPhonePage({
    super.key,
  });

  @override
  State<LoginWithPhonePage> createState() => _LoginWithPhonePageState();
}

class _LoginWithPhonePageState extends State<LoginWithPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BasedListView(
        children: [
          BasedListSection(
            titleText: '手机验证码登录',
            titleTextStyle: const TextStyle(fontSize: 28),
            elevation: 0,
            shape: const RoundedRectangleBorder(),
            itemPadding: const EdgeInsets.symmetric(vertical: 24),
            separator: const SizedBox(),
            children: [
              const TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: '请输入手机号码',
                  border: OutlineInputBorder(),
                  labelText: '手机号码',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              TextField(
                maxLength: 6,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '请输入验证码',
                  border: const OutlineInputBorder(),
                  labelText: '验证码',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('获取验证码'),
                    ),
                  ),
                  error: TextButton(
                    onPressed: () {},
                    child: const Text('收不到验证码？'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: FilledButton(
              onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (_) => false,
              ),
              child: const Text('登录'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextButton(
              onPressed: () {},
              child: const Text('新用户注册'),
            ),
          ),
        ],
      ),
    );
  }
}

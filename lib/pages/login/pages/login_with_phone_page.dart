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
      // BasedListView(
      //   children: [
      //     Expanded(
      //       child: BasedListSection(
      //         titleText: '手机验证码登录',
      //         titleTextStyle: const TextStyle(fontSize: 28),
      //         elevation: 0,
      //         shape: const RoundedRectangleBorder(),
      //         cardMargin: EdgeInsets.symmetric(
      //           horizontal: 4,
      //           vertical: 32,
      //         ),
      //         children: [
      //         ]
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

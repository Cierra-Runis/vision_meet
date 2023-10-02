import 'package:vision_meet/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _agreedLicense = false;

  void onChanged(bool? value) => setState(() => _agreedLicense = value!);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.push(const LoginSettingPage()),
          icon: const Icon(Icons.settings_rounded),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: Center(
              child: AppIconWidget(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Wrap(
                spacing: 42,
                children: [
                  LoginWithPhoneButton(
                    agreedLicense: _agreedLicense,
                    onChanged: onChanged,
                  ),
                  LoginWithQQButton(
                    agreedLicense: _agreedLicense,
                    onChanged: onChanged,
                  ),
                  LoginWithWeChatButton(
                    agreedLicense: _agreedLicense,
                    onChanged: onChanged,
                  ),
                  LoginWithEmailButton(
                    agreedLicense: _agreedLicense,
                    onChanged: onChanged,
                  ),
                ],
              ),
            ),
          ),
          LoginLicenseAgreeWidget(
            agreedLicense: _agreedLicense,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

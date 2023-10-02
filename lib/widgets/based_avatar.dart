import 'package:vision_meet/index.dart';

class BasedAvatar extends StatelessWidget {
  const BasedAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Scaffold.of(context).openDrawer,
      child: const Badge(
        alignment: Alignment.bottomRight,
        label: FaIcon(
          FontAwesomeIcons.solidStar,
          size: 10,
          color: true ? Colors.amber : Colors.grey,
        ),
        backgroundColor: Colors.transparent,
        child: CircleAvatar(
          radius: 20,
          child: Text('RC'),
        ),
      ),
    );
  }
}

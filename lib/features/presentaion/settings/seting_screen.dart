import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ridesharingv1/app/local_db/local_db_notifier.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';
import 'package:ridesharingv1/features/presentaion/login_screen/login_screen.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({Key? key, required this.userData}) : super(key: key);
  final LoginResponse userData;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Setting'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
              child: Text(
                (widget.userData.group == 'driver')
                    ? 'Taxi owner'
                    : 'Passenger',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            userInfo(context, 'User Id : ', widget.userData.id.toString()),
            const SizedBox(height: 10),
            userInfo(context, 'Username : ', widget.userData.username),
            const SizedBox(height: 10),
            userInfo(context, 'Email : ', widget.userData.email),
            SizedBox(height: size.height / 2),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                );
                ref.read(localDataSourceNotifier).clearCacheData();
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }

  RichText userInfo(BuildContext context, String titile, String data) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: titile,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextSpan(
            text: data,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 14,
                ),
          ),
        ],
      ),
      textAlign: TextAlign.left,
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameF = FocusNode();
  final _passwordF = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameF.dispose();
    _passwordF.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Login',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: mediaQuery.width / 6),
            SvgPicture.asset(
              'assets/images/login_screen_img.svg',
              height: mediaQuery.height / 6,
            ),
            SizedBox(height: mediaQuery.width / 6),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameController,
                focusNode: _usernameF,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  labelStyle: TextStyle(fontSize: 14),
                  isDense: true,
                  contentPadding: EdgeInsets.all(16),
                ),
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(_passwordF);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                focusNode: _passwordF,
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 14),
                  isDense: true,
                  contentPadding: EdgeInsets.all(16),
                ),
                onEditingComplete: () {
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('Login'),
              ),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

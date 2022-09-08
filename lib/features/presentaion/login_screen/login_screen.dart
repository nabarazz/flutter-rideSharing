// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridesharingv1/core/base_state/base_state.dart';
import 'package:ridesharingv1/core/extension/snack_bar_extension.dart';
import 'package:ridesharingv1/features/application/ride_sharing_controller.dart';
import 'package:ridesharingv1/features/presentaion/map_screen/open_street_map.dart';

final _authController = StateNotifierProvider<AuthController, BaseState>(
  authController,
);

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameF = FocusNode();
  final _passwordF = FocusNode();
  final _formKey = GlobalKey<FormState>();

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
    ref.listen<BaseState<dynamic>>(_authController, (oldState, state) {
      state.maybeWhen(
        loading: () {
          showDialog(
            context: context,
            builder: (context) => Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
          );
        },
        success: (dynamic _) async {
          context.showSnackBar(
            context,
            'Login in success',
            Icons.check_circle,
          );
          _usernameController.clear();
          _passwordController.clear();
          Navigator.of(context).pop();
          await Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const OpenStressMapScreen(),
            ),
          );
        },
        error: (_) {},
        orElse: () {},
      );
    });
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Login',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
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
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Username is empty';
                      }
                      return null;
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
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password is empty';
                      }
                      return null;
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ref.read(_authController.notifier).userLogin(
                            username: _usernameController.text.trim(),
                            password: _passwordController.text.trim(),
                          );
                    }
                  },
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
        ),
      ),
    );
  }
}

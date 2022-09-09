import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridesharingv1/core/base_state/base_state.dart';
import 'package:ridesharingv1/core/extension/snack_bar_extension.dart';
import 'package:ridesharingv1/features/application/ride_sharing_controller.dart';
import 'package:ridesharingv1/features/infrastructure/entities/signup_request/signup_request.dart';
import 'package:ridesharingv1/features/presentaion/map_screen/open_street_map.dart';

final _signupController = StateNotifierProvider<AuthController, BaseState>(
  authController,
);

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final _userNameControlelr = TextEditingController();
  final _pass1Controlelr = TextEditingController();
  final _pass2Controlelr = TextEditingController();
  final _emailControlelr = TextEditingController();
  final _firstNameControlelr = TextEditingController();
  final _lastNameControlelr = TextEditingController();
  final _userNameFocusNode = FocusNode();
  final _pass1FocusNode = FocusNode();
  final _pass2FocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _userFirstNameFocusNode = FocusNode();
  final _userLastNameFocusNode = FocusNode();

  late String selectedGroup = '';
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _userNameControlelr.dispose();
    _pass1Controlelr.dispose();
    _pass2Controlelr.dispose();
    _emailControlelr.dispose();
    _firstNameControlelr.dispose();
    _lastNameControlelr.dispose();
    _userNameFocusNode.dispose();
    _pass1FocusNode.dispose();
    _pass2FocusNode.dispose();
    _emailFocusNode.dispose();
    _userFirstNameFocusNode.dispose();
    _userLastNameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    ref.listen<BaseState<dynamic>>(_signupController, (oldState, state) {
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
            'User registered',
            Icons.check_circle,
            Colors.green,
          );
          _userNameControlelr.clear();
          _pass1Controlelr.clear();
          _pass2Controlelr.clear();
          _emailControlelr.clear();
          _firstNameControlelr.clear();
          _lastNameControlelr.clear();
          Navigator.of(context).pop();
          await Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const OpenStressMapScreen(),
            ),
          );
        },
        error: (fail) {
          context.showSnackBar(
            context,
            fail.errorMessage,
            Icons.error,
            Colors.red,
          );
        },
        orElse: () {},
      );
    });
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: mediaQuery.width / 7),
                SvgPicture.asset(
                  'assets/images/signup_img.svg',
                  height: mediaQuery.height / 6,
                ),
                SizedBox(height: mediaQuery.width / 7),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    focusNode: _userNameFocusNode,
                    controller: _userNameControlelr,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      labelStyle: TextStyle(fontSize: 14),
                      isDense: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_pass1FocusNode);
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
                    focusNode: _pass1FocusNode,
                    controller: _pass1Controlelr,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 14),
                      isDense: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                    obscureText: true,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_pass2FocusNode);
                    },
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password is empty';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    focusNode: _pass2FocusNode,
                    controller: _pass2Controlelr,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm password',
                      labelStyle: TextStyle(fontSize: 14),
                      isDense: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                    obscureText: true,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_emailFocusNode);
                    },
                    validator: (String? value) {
                      if (value != _pass1Controlelr.text) {
                        return 'Password did not match';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    focusNode: _emailFocusNode,
                    controller: _emailControlelr,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '...@gamil.com',
                      labelStyle: TextStyle(fontSize: 14),
                      isDense: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context)
                          .requestFocus(_userFirstNameFocusNode);
                    },
                    validator: (String? value) {
                      final regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (!regex.hasMatch(value!)) {
                        return 'Email invalid';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    focusNode: _userFirstNameFocusNode,
                    controller: _firstNameControlelr,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First name',
                      labelStyle: TextStyle(fontSize: 14),
                      isDense: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context)
                          .requestFocus(_userLastNameFocusNode);
                    },
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'First name is empty';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    focusNode: _userLastNameFocusNode,
                    controller: _lastNameControlelr,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last name',
                      labelStyle: TextStyle(fontSize: 14),
                      isDense: true,
                      contentPadding: EdgeInsets.all(16),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    },
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Last name is empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Select User group'),
                Row(
                  children: [
                    SizedBox(
                      width: mediaQuery.width / 2.5,
                      child: RadioListTile(
                        title: const Text(
                          'Passenger',
                          style: TextStyle(fontSize: 12),
                        ),
                        value: 'passenger',
                        groupValue: selectedGroup,
                        onChanged: (value) {
                          setState(() {
                            selectedGroup = value.toString();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.width / 2.5,
                      child: RadioListTile(
                        title: const Text(
                          'Driver',
                          style: TextStyle(fontSize: 12),
                        ),
                        value: 'driver',
                        groupValue: selectedGroup,
                        onChanged: (value) {
                          setState(() {
                            selectedGroup = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    final data = SignUpRequest(
                      username: _userNameControlelr.text.trim(),
                      password1: _pass1Controlelr.text.trim(),
                      password2: _pass2Controlelr.text.trim(),
                      email: _emailControlelr.text.trim(),
                      first_name: _firstNameControlelr.text.trim(),
                      last_name: _lastNameControlelr.text.trim(),
                      group: selectedGroup,
                    );
                    ref
                        .read(_signupController.notifier)
                        .newUserSignUp(signUpRequest: data);
                    // }
                  },
                  child: const Text('Sign up'),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  final _userGroupControlelr = TextEditingController();
  final _userNameFocusNode = FocusNode();
  final _pass1FocusNode = FocusNode();
  final _pass2FocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _userFirstNameFocusNode = FocusNode();
  final _userLastNameFocusNode = FocusNode();
  final _userGroupFocusNode = FocusNode();

  @override
  void dispose() {
    _userNameControlelr.dispose();
    _pass1Controlelr.dispose();
    _pass2Controlelr.dispose();
    _emailControlelr.dispose();
    _firstNameControlelr.dispose();
    _lastNameControlelr.dispose();
    _userGroupControlelr.dispose();
    _userNameFocusNode.dispose();
    _pass1FocusNode.dispose();
    _pass2FocusNode.dispose();
    _emailFocusNode.dispose();
    _userFirstNameFocusNode.dispose();
    _userLastNameFocusNode.dispose();
    _userGroupFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
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
                    FocusScope.of(context).unfocus();
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
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Confirm password is empty';
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
                    FocusScope.of(context).unfocus();
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  focusNode: _userGroupFocusNode,
                  controller: _userGroupControlelr,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Group',
                    labelStyle: TextStyle(fontSize: 14),
                    isDense: true,
                    contentPadding: EdgeInsets.all(16),
                  ),
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'User group is empty';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign up'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imithon_2/sign_up/password_page.dart';

class LoginAcountPage extends StatefulWidget {
  const LoginAcountPage({super.key});

  @override
  State<LoginAcountPage> createState() => _LoginAcountPageState();
}

class _LoginAcountPageState extends State<LoginAcountPage> {
  final TextEditingController emailController = TextEditingController();

  bool _isEmailValid(String email) {
    return email.contains('@');
  }

  void _onContinue() {
    if (_isEmailValid(emailController.text)) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => PasswordPage(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Xato Email'),
          content: Text('Togri Email kiriting!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(248, 248, 248, 1),
                    ),
                    child: Image.asset('assets/moon_logo.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Hello!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'Log in and continue your learning',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Log in with Phone Number',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 122, 255, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: emailController,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'user@gmail.com',
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: _isEmailValid(emailController.text)
                          ? Colors.blue
                          : Colors.red,
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email kiriting';
                  }
                  if (!_isEmailValid(value)) {
                    return 'togri email kiriting';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 28,
              ),
              InkWell(
                onTap: _onContinue,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(0, 122, 255, 1),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 42,
                    height: 2,
                    color: Color.fromRGBO(215, 215, 215, 1),
                  ),
                  const Text(
                    'or',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(215, 215, 215, 1),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 42,
                    height: 2,
                    color: Color.fromRGBO(215, 215, 215, 1),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(229, 242, 255, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/google_logo.png',
                        width: 17.46,
                      ),
                      const SizedBox(
                        width: 11.52,
                      ),
                      const Text(
                        'Log in with Google',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(229, 242, 255, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/apple_logo.png',
                        width: 17.46,
                      ),
                      const SizedBox(
                        width: 11.52,
                      ),
                      const Text(
                        'Log in with Apple',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                textAlign: TextAlign.center,
                'By joining, I declare that I have read and accent the Terms and Privacy Policy',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(215, 215, 215, 1),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Don\'t have an account yet?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: _onContinue,
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 122, 255, 1),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

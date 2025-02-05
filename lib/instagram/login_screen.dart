import 'package:flutter/material.dart';
import 'package:practice_widgets/instagram/main_screen.dart';
import 'package:practice_widgets/instagram/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Expanded(
              child: Center(
                  child: Text(
            'English',
            style: TextStyle(color: Colors.white),
          ))),
          const Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ))),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  const SizedBox(
                      height: 60,
                      width: 180,
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)),
                      fillColor: Colors.grey.shade700,
                      prefixIconColor: Colors.white,
                      filled: true,
                      constraints:
                          const BoxConstraints.tightFor(width: 327, height: 50),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Phone number, email or username',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)),
                      fillColor: Colors.grey.shade700,
                      prefixIconColor: Colors.white,
                      filled: true,
                      constraints:
                          const BoxConstraints.tightFor(width: 327, height: 50),
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 327,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot your login details? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Get help logging in.",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )),
          const Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ))),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    " Sign up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

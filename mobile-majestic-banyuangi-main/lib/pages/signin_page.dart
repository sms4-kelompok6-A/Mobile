import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 30, right: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email Address",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100,
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              // height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  decoration: const InputDecoration.collapsed(
                    hintText: "Enter your email address",
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 10, right: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Password",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 100,
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              // height: 48,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  obscureText: true,
                  decoration: const InputDecoration.collapsed(
                    hintText: "Enter your password",
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSignin() {
      return Container(
        margin: const EdgeInsets.only(top: 15, right: 40, left: 40),
        decoration: BoxDecoration(
            color: const Color(0xFF73C993),
            borderRadius: BorderRadius.circular(10)),
        height: 48,
        width: double.infinity,
        child: TextButton(
          onPressed: (() => Navigator.pushNamed(context, '/home')),
          child: const Text(
            'Sign In',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: (() => Navigator.pushNamed(context, '/signup')),
              child: const Text(
                " Sign Up",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/majestic_banyuangi.png',
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/banyuangi.png',
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Log in now to continue",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            emailInput(),
            passwordInput(),
            buttonSignin(),
            const Spacer(),
            footer(),
          ],
        ),
      ),
    );
  }
}

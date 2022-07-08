import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const loginPageRoutes = '/login';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usableWidth = MediaQuery.of(context).size.width -
        (MediaQuery.of(context).padding.left +
            MediaQuery.of(context).padding.right);
    final usableHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.bottom +
            MediaQuery.of(context).padding.top);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greeting text
              Text(
                "Point of sale",
                style: GoogleFonts.secularOne(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              SizedBox(
                height: usableHeight * 0.1,
              ),
              //email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: usableWidth * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: usableHeight * 0.02,
              ),
              //password text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: usableWidth * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              //login button
              SizedBox(
                height: usableHeight * 0.07,
              ),

              Container(
                width: usableWidth * 0.65,
                height: usableHeight * 0.05,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Center(
                      child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  )),
                ),
              ),
              //not a member? register now

              SizedBox(
                height: usableHeight * 0.03,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Text(
                  'Not a member? ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  'register now',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              SizedBox(
                height: usableHeight * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

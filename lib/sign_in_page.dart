import 'package:flutter/material.dart';
import 'package:SwiftPay/forgot_password.dart';
import 'package:SwiftPay/glass_morphism.dart';
import 'package:SwiftPay/home_screen.dart';
//import 'package:SwiftPay/sample.dart';

List<String> placeHolders = ["Email", "Password"];
List<IconData> icons = [Icons.email_outlined, Icons.lock_outline];

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool visible = false;

  List<Widget> getDetails(List<String> li, List<IconData> icons) {
    List<Widget> list = [];
    for (int i = 0; i < li.length; i++) {
      list.add(Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GlassMorphism(
          blur: 20,
          opacity: 0.4,
          height: 65,
          width: MediaQuery.of(context).size.width - 50,
          borderRadius: 20,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  icons[i],
                  size: 33,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    keyboardType:
                        li[i] == "Email" ? TextInputType.emailAddress : null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: li[i],
                      suffixIcon: li[i] == "Password"
                          ? IconButton(
                              icon: Icon(visible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  visible = !visible;
                                });
                              },
                            )
                          : null,
                    ),
                    obscureText:
                        (li[i] == "Password" && visible) ? true : false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 236, 235, 232),
          ),
          child: Center(
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new)),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Let\'s ',
                    style: TextStyle(fontSize: 34),
                  ),
                  Text(
                    'Sign You In',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text(
                'Welcome back, You\'ve been missed!',
                style: TextStyle(color: Color(0xFF8a8A8A)),
              ),
              const SizedBox(
                height: 20,
              ),
              ...getDetails(placeHolders, icons),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 200,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const ForgotPassword()));
                    },
                    child: const Text(
                      'Forgot PassWord ?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: Container(
                  width: 230,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF161616)),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}

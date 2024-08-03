import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatefulWidget {
  final String a;
  final double b;

  const PaymentSuccessScreen({
    super.key,
    required this.a,
    required this.b,
  });

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  final date = DateTime.now();

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
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(107, 242, 201, 89),
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                        color: const Color.fromARGB(162, 232, 195, 93), width: 1.5),
                  ),
                  child: Center(
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 196, 52),
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        border: Border.all(
                            color: const Color.fromARGB(255, 242, 199, 81), width: 2),
                      ),
                      child: const Icon(
                        Icons.done_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Your ${widget.a} Payment request',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff161616)),
                ),
                const SizedBox(height: 10),
                Text(
                  "of ${widget.b} is Successful",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff161616)),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Your Payment has been processed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(154, 22, 22, 22)),
                ),
                const SizedBox(height: 10),
                Text(
                  "Successfully by ${date.toString().substring(11, 16)} today",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(154, 22, 22, 22)),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 196, 52),
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                        color: const Color.fromARGB(255, 242, 199, 81), width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      'View details',
                      style: TextStyle(
                          color: Color.fromARGB(174, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
          Navigator.pop(context);
          Navigator.pop(context);
          Navigator.pop(context);
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            color: Color.fromARGB(255, 242, 199, 89),
          ),
          child: const Center(
            child: Text(
              'DONE',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

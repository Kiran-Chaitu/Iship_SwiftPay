import 'package:flutter/material.dart';

class Transferconfirm1 extends StatefulWidget {
  final String a, b, c;
  final double d;
  final bool e;
  const Transferconfirm1(
      {super.key,
      required this.a,
      required this.b,
      required this.c,
      required this.d,
      required this.e});

  @override
  State<Transferconfirm1> createState() => _Transferconfirm1State();
}

class _Transferconfirm1State extends State<Transferconfirm1> {
  final date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
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
                const Text(
                  'Money Transfer Was',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff161616)),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Successful',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff161616)),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Below are the information summary',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(154, 22, 22, 22)),
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(37, 138, 138, 138),
                    border: Border.all(
                      color: const Color.fromARGB(23, 0, 0, 0),
                    ),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Transaction ID',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          const Text(
                            'AccountNumber',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            '1489 4586 0536',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(163, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          Text(
                            widget.b,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(163, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(37, 138, 138, 138),
                    border: Border(
                      left: BorderSide(
                        color: Color.fromARGB(23, 0, 0, 0),
                      ),
                      right: BorderSide(
                        color: Color.fromARGB(23, 0, 0, 0),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sent to',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "${widget.b} (${widget.a} )",
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(163, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(37, 138, 138, 138),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(
                      color: const Color.fromARGB(23, 0, 0, 0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                          ),
                          const Text(
                            'Time',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            date.toString().substring(0, 10),
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(163, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.4 - 56,
                          ),
                          Text(
                            date.toString().substring(10, 19),
                            style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(163, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.17,
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.03,
              bottom: MediaQuery.of(context).size.height * 0.04,
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black),
            child: const Center(
              child: Icon(
                Icons.download,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.63,
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.04,
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black),
            child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);

                    widget.e == true ? (Navigator.pop(context)) : null;
                    widget.e == true ? (Navigator.pop(context)) : null;

                    widget.e == true ? (Navigator.pop(context)) : null;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

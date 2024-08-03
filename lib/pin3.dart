// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:SwiftPay/billSucces.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:SwiftPay/glassmorphism.dart';
import 'package:SwiftPay/loading.dart';

class Verify extends StatefulWidget {
  final String a;
  final double b;
  const Verify({
    super.key,
    required this.a,
    required this.b,
  });

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();
  //final FocusNode _focusNode5 = FocusNode();

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    //_focusNode5.dispose();
    super.dispose();
  }

  List<Widget> codeContainers() {
    return [
      _buildSingleDigitTextField(_focusNode1, _focusNode2),
      _buildSingleDigitTextField(_focusNode2, _focusNode3),
      _buildSingleDigitTextField(_focusNode3, _focusNode4),
      _buildSingleDigitTextField(_focusNode4, null),
      //_buildSingleDigitTextField(_focusNode5, null),
    ];
  }

  Widget _buildSingleDigitTextField(
      FocusNode currentNode, FocusNode? nextNode) {
    return GlassMorphism(
      blur: 0,
      opacity: 0.6,
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.14,
      borderRadius: 5,
      child: Center(
        child: TextField(
          focusNode: currentNode,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 25),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
          onChanged: (value) {
            if (value.length == 1) {
              if (nextNode != null) {
                FocusScope.of(context).requestFocus(nextNode);
              } else {
                currentNode.unfocus();
              }
            }
          },
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                height: 110,
                width: 110,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/secure.jpg'),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 30),
              const Text(
                'Enter PIN To Confirm',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 20),
              const Text(
                'Please enter your 4 digit PIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 45),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: codeContainers(),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.1,
          right: MediaQuery.of(context).size.height * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.27,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.black),
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () async {
                String a = widget.a;
                double b = widget.b;
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => const LoadingScreen(),
                );
                await Future.delayed(const Duration(seconds: 3));
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PaymentSuccessScreen(a: a, b: b)));
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
                'Next',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

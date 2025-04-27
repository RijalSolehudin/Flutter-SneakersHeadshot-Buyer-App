import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/core.dart';

class RegisterVerifyPage extends StatefulWidget {
  const RegisterVerifyPage({super.key});

  @override
  State<RegisterVerifyPage> createState() => _RegisterVerifyPageState();
}

class _RegisterVerifyPageState extends State<RegisterVerifyPage> {
  final codeController = TextEditingController();
  Timer? _timer;
  int _start = 59;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    codeController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Text(
              'Verify Account',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SpaceHeight(12.0),
          const Center(
            child: Text.rich(
              TextSpan(
                text: 'Code has been send to ',
                children: [
                  TextSpan(
                    text: 'johndoe@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: '.\nEnter the code to verify your account.',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SpaceHeight(32.0),
          CustomTextField(
            controller: codeController,
            label: 'Enter Code',
            textCapitalization: TextCapitalization.characters,
            hintText: '4 Digit Code',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text.rich(
              TextSpan(
                text: 'Didn’t Receive Code? ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Resend Code',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: _start == 0 ? AppColors.blue : AppColors.gray,
                      decorationColor:
                          _start == 0 ? AppColors.blue : AppColors.gray,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = _start == 0
                          ? () {
                              _start = 59;
                              startTimer();
                            }
                          : null,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SpaceHeight(8.0),
            Center(
              child: Text(
                'Resend code in 00:${_start.toString().padLeft(2, '0')}',
              ),
            ),
            const SpaceHeight(20.0),
            Button.filled(
              onPressed: () => context.popToRoot(),
              label: 'Verify Account',
              borderRadius: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

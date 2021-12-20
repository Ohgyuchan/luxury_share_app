import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/widgets/buttons.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 50,
                ),
                Text(
                  '딱 질릴 때까지만 써 보자',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'LUXURY SHARING',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                kakaoLoginButton(context),
                const SizedBox(
                  height: 10,
                ),
                otherLoginButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

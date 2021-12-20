import 'package:flutter/material.dart';
import '/screens/home_view.dart';

Widget kakaoLoginButton(BuildContext context) {
  return MaterialButton(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(Icons.ac_unit),
        Text('카카오로 로그인'),
        SizedBox(),
      ],
    ),
    minWidth: 400,
    height: 45,
    color: Colors.yellow,
    onPressed: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeView()));
    },
    elevation: 0,
    highlightElevation: 0,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent.withOpacity(0.8),
  );
}

Widget otherLoginButton() {
  return MaterialButton(
    child: const Text(
      '다른 방법으로 시작하기',
      style: TextStyle(color: Colors.white),
    ),
    minWidth: 400,
    height: 45,
    color: Colors.grey,
    onPressed: () {},
    elevation: 0,
    highlightElevation: 0,
    splashColor: Colors.transparent,
    highlightColor: Colors.black.withOpacity(0.8),
  );
}

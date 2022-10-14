import 'package:flutter/material.dart';

import 'body/body_home.dart';
import 'login/sign_in.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YATOU',
      home: SignInScreen(),
    ),
  );
}

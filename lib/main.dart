import 'package:flutter/material.dart';
import 'package:inflearn_class/common/component/customTextField.dart';

void main() {
  runApp(
    _App(),

  );
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: "이메일을 입력해 주세요", 
              onChanged: (String value) {  },
              obscureText: false,),
            CustomTextFormField(
              hintText: "비밀번호 입력해 주세요", 
              onChanged: (String value) {  },
              obscureText: true,)
          ],
          


        ),
      ),

    );
  }
}
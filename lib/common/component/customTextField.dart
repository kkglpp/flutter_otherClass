import 'package:flutter/material.dart';
import 'package:inflearn_class/common/const/color.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.errText,
    this.obscureText = false, 
    this.autofocus= true,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final baseborder = OutlineInputBorder(
        borderSide: BorderSide(
      color: Input_BR_Color,
      width: 1.0,
    ));

    return TextFormField(
      cursorColor: Primary_Color,
      // 비밀번호 입력할떄
      obscureText: obscureText,
      //화면
      autofocus: autofocus,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: hintText,
          errorText: errText,
          hintStyle: TextStyle(
            color: Body_Text_Color,
            fontSize: 14.0,
          ),
          fillColor: Input_BG_Color,
          // false : 배경 없음
          //True : 배경 있음
          filled: true,
          // 모든 input 상태의 기본 스타일 셋팅
          border: baseborder,
          //선택된 상태의 스타일 셋팅
          focusedBorder: baseborder.copyWith(
              borderSide:
                  baseborder.borderSide.copyWith(color: Primary_Color))),
    );
  }
}

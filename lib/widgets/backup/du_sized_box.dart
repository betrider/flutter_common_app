import 'package:flutter/material.dart';

class DUSizedBox extends StatelessWidget {
  
  ///4배수 SizedBox(수치가 안맞는경우 반내림해서 사용)
  ///세로
  const DUSizedBox.h4({this.additionalValue = 0}) : this.defaultValue = 4, isHeight = true;
  const DUSizedBox.h8({this.additionalValue = 0}) : this.defaultValue = 8, isHeight = true;
  const DUSizedBox.h12({this.additionalValue = 0}) : this.defaultValue = 12, isHeight = true;
  const DUSizedBox.h16({this.additionalValue = 0}) : this.defaultValue = 16, isHeight = true;
  const DUSizedBox.h20({this.additionalValue = 0}) : this.defaultValue = 20, isHeight = true;
  const DUSizedBox.h24({this.additionalValue = 0}) : this.defaultValue = 24, isHeight = true;
  const DUSizedBox.h28({this.additionalValue = 0}) : this.defaultValue = 28, isHeight = true;
  const DUSizedBox.h32({this.additionalValue = 0}) : this.defaultValue = 32, isHeight = true;
  const DUSizedBox.h36({this.additionalValue = 0}) : this.defaultValue = 36, isHeight = true;
  const DUSizedBox.h40({this.additionalValue = 0}) : this.defaultValue = 40, isHeight = true;
  const DUSizedBox.h44({this.additionalValue = 0}) : this.defaultValue = 44, isHeight = true;
  const DUSizedBox.h48({this.additionalValue = 0}) : this.defaultValue = 48, isHeight = true;
  const DUSizedBox.h52({this.additionalValue = 0}) : this.defaultValue = 52, isHeight = true;
  const DUSizedBox.h56({this.additionalValue = 0}) : this.defaultValue = 56, isHeight = true;
  const DUSizedBox.h60({this.additionalValue = 0}) : this.defaultValue = 60, isHeight = true;
  const DUSizedBox.h64({this.additionalValue = 0}) : this.defaultValue = 64, isHeight = true;
  const DUSizedBox.h68({this.additionalValue = 0}) : this.defaultValue = 68, isHeight = true;

  ///가로
  const DUSizedBox.w4({this.additionalValue = 0}) : this.defaultValue = 4, isHeight = false;
  const DUSizedBox.w8({this.additionalValue = 0}) : this.defaultValue = 8, isHeight = false;
  const DUSizedBox.w12({this.additionalValue = 0}) : this.defaultValue = 12, isHeight = false;
  const DUSizedBox.w16({this.additionalValue = 0}) : this.defaultValue = 16, isHeight = false;

  /// 기본값
  final double defaultValue;

  /// 추가값
  final double additionalValue;

  /// 세로 여부
  final bool isHeight;

  @override
  Widget build(BuildContext context) {
    return isHeight ? SizedBox(
      height: defaultValue + additionalValue,
    ) : SizedBox(
      width: defaultValue + additionalValue,
    );
  }
}

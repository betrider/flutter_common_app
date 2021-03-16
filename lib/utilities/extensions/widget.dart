import 'package:flutter/material.dart';

extension ExtendedText on Widget {

  ///시작 정렬
  addAlignCenterStart() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: this,
    );
  }

  ///끝 정렬
  addAlignCenterEnd() {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: this,
    );
  }

  ///패딩 전체 추가
  addPaddingAll(double value){
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  ///패딩 가로 추가
  addPaddingHorizontal(double value){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  ///패딩 세로 추가
  addPaddingVertical(double value){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  ///패딩 왼쪽 추가
  addPaddingLeft(double value){
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  ///패딩 오른쪽 추가
  addPaddingRight(double value){
    return Padding(
      padding: EdgeInsets.only(right: value),
      child: this,
    );
  }

  ///패딩 상단 추가
  addPaddingTop(double value){
    return Padding(
      padding: EdgeInsets.only(top: value),
      child: this,
    );
  }

  ///패딩 하단 추가
  addPaddingBottom(double value){
    return Padding(
      padding: EdgeInsets.only(bottom: value),
      child: this,
    );
  }
}
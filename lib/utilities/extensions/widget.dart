import 'package:flutter/material.dart';

extension ExtendedText on Widget {
  //Align

  ///상단 시작 정렬
  addAlignTopStart() {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: this,
    );
  }

  ///상단 중앙 정렬
  addAlignTopCenter() {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: this,
    );
  }

  ///상단 끝 정렬
  addAlignTopEnd() {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: this,
    );
  }

  ///중앙 시작 정렬
  addAlignCenterStart() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: this,
    );
  }

  ///중앙 시작 정렬
  addAlignCenter() {
    return Align(
      alignment: AlignmentDirectional.center,
      child: this,
    );
  }

  ///중앙 끝 정렬
  addAlignCenterEnd() {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: this,
    );
  }

  ///하단 시작 정렬
  addAlignBottomStart() {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: this,
    );
  }

  ///하단 시작 정렬
  addAlignBottomCenter() {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: this,
    );
  }

  ///하단 끝 정렬
  addAlignBottomEnd() {
    return Align(
      alignment: AlignmentDirectional.bottomEnd,
      child: this,
    );
  }

  //pading

  ///패딩 전체 추가
  addPaddingAll(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  ///패딩 가로 추가
  addPaddingHorizontal(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: this,
    );
  }

  ///패딩 세로 추가
  addPaddingVertical(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: this,
    );
  }

  ///패딩 왼쪽 추가
  addPaddingLeft(double value) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  ///패딩 오른쪽 추가
  addPaddingRight(double value) {
    return Padding(
      padding: EdgeInsets.only(right: value),
      child: this,
    );
  }

  ///패딩 상단 추가
  addPaddingTop(double value) {
    return Padding(
      padding: EdgeInsets.only(top: value),
      child: this,
    );
  }

  ///패딩 하단 추가
  addPaddingBottom(double value) {
    return Padding(
      padding: EdgeInsets.only(bottom: value),
      child: this,
    );
  }
}

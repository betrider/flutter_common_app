import 'package:flutter_common_app/index.dart';

class CustomTextField extends StatefulWidget {
  
  CustomTextField.container({
    this.initialValue,
    this.hintText = '요청하고 싶은 내용을 입력해주세요.',
    this.maxLength = 200,
    this.height = 96,
    this.onChanged,
    this.controller,
    this.validator
  })  : maxLine = 5,
        errText = null,
        scrollbar = true,
        _widget = _CustomFillState();

  CustomTextField.single({
    this.initialValue,
    this.hintText = '요청하고 싶은 내용을 입력해주세요.',
    this.maxLength = 200,
    this.height = 96,
    this.onChanged,
    this.controller,
    this.validator
  })  : maxLine = 5,
        errText = null,
        scrollbar = true,
        _widget = _Single();

  CustomTextField.multi({
    this.initialValue,
    this.hintText = '요청하고 싶은 내용을 입력해주세요.',
    this.maxLength = 200,
    this.maxLine = 5,
    this.height = 96,
    this.onChanged,
    this.controller,
    this.validator
  })  : errText = null,
        scrollbar = true,
        _widget = _Multi();

  CustomTextField.bottomLine({
    this.initialValue,
    this.hintText = "",
    this.maxLength = 200,
    this.height = 0,
    this.onChanged,
    this.maxLine = 5,
    this.errText,
    this.scrollbar = true,
    this.controller,
    this.validator
  }) : _widget = _CustomBottomLineState();

  /// 초기값
  final String? initialValue;

  /// 힌트 내용
  final String hintText;

  /// 입력 최대 길이
  final int maxLength;

  /// 텍스트필드 높이
  final double height;

  /// 기본 입력 라인
  final int maxLine;

  /// 출력 위젯
  final State _widget;

  /// 에러 메세지
  final String? errText;

  /// 텍스트 수정 후 콜백 이벤트
  final ValueChanged<String>? onChanged;

  /// 스크롤바 기능 여부 (default : true)
  final bool scrollbar;

  /// 컨트롤러
  final TextEditingController? controller;

  /// 조건체크
  final String? Function(String?)? validator;

  @override
  State createState() => _widget;
}

class _CustomFillState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Scrollbar(
          child: Container(
            height: widget.height,
            color: AppColor.grey_B7B7B7,
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              initialValue: widget.initialValue,
              onChanged: widget.onChanged,
              style: AppTextStyle.black_12_w400,
              keyboardType: TextInputType.multiline,
              maxLength: widget.maxLength,
              maxLines: widget.maxLine,
              controller: controller,
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                // hintStyle: DUTextStyle.grey_B7B7B7_14,
                border: InputBorder.none,
                hintText: widget.hintText,
                counterText: '',
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              controller.text.length.toString() +
                  '/' +
                  widget.maxLength.toString(),
              style: AppTextStyle.grey_12_w400,
            )),
      ],
    );
  }
}

class _Single extends State<CustomTextField> {
  _Single({this.trailing});

  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey_EDEDED,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              initialValue: widget.initialValue,
              onChanged: widget.onChanged,
              style: AppTextStyle.black_14_w400,
              keyboardType: TextInputType.multiline,
              maxLength: widget.maxLength,
              maxLines: 1,
              controller: widget.controller,
              decoration: new InputDecoration(
                hintStyle: AppTextStyle.grey_14_w400,
                border: InputBorder.none,
                hintText: widget.hintText,
                counterText: '',
              ),
              validator: widget.validator,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          if (trailing != null)
            Text(
              trailing!,
              style: AppTextStyle.black_14_w400,
            ),
        ],
      ),
    );
  }
}

class _Multi extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey_EDEDED,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              initialValue: widget.initialValue,
              onChanged: widget.onChanged,
              style: AppTextStyle.black_14_w400,
              keyboardType: TextInputType.multiline,
              maxLength: widget.maxLength,
              maxLines: widget.maxLine,
              controller: widget.controller,
              decoration: new InputDecoration(
                hintStyle: AppTextStyle.grey_14_w400,
                border: InputBorder.none,
                hintText: widget.hintText,
                counterText: '',
              ),
              validator: widget.validator,
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}

class _CustomBottomLineState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();
  int numLines = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _textField() {
    return TextFormField(
      initialValue: widget.initialValue,
      onChanged: widget.onChanged,
      style: AppTextStyle.black_12_w400,
      keyboardType: TextInputType.multiline,
      maxLength: widget.maxLength,
      maxLines: widget.maxLine,
      controller: controller,
      decoration: new InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 15),
        // hintStyle: DUTextStyle.grey_B7B7B7_12,
        hintText: widget.hintText,
        errorText: widget.errText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.scrollbar ? Scrollbar(child: _textField()) : _textField(),
      ],
    );
  }
}

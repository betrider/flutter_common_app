// import 'package:du_mobile/index.dart';
// import 'package:pattern_formatter/pattern_formatter.dart';

// typedef _ReturnBoolValueString = bool Function(String? value);
// typedef _ReturnVoidValueDynamic = void Function(dynamic value);
// typedef _ReturnVoidValueStringSafe = void Function(String? value);
// typedef _ReturnVoidValueString = void Function(String value);

// class DUTextField extends StatefulWidget {
//   /// 아이디 텍스트필드
//   DUTextField.id({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '아이디',
//     String validateHintText = '아이디를 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '아이디를 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.text,
//           inputFormatters: [FilteringTextInputFormatter.deny(' ')],
//         );

//   /// 이름 텍스트필드
//   DUTextField.name({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '이름',
//     String validateHintText = '이름을 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '이름을 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.name,
//           inputFormatters: [FilteringTextInputFormatter.deny(' ')],
//         );

//   /// 비밀번호 텍스트필드
//   DUTextField.password({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '비밀번호',
//     String validateHintText = '비밀번호가 일치하지 않습니다.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '비밀번호를 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           obscureText: true,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.visiblePassword,
//           inputFormatters: [FilteringTextInputFormatter.deny(' ')],
//         );

//   /// 휴대폰번호 텍스트필드
//   DUTextField.phoneNumber({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '휴대폰 번호',
//     String validateHintText = '번호를 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '- 없이 입력',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.number,
//           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//         );

//   ///이메일 텍스트필드
//   DUTextField.email({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '이메일 주소',
//     String validateHintText = '잘못된 이메일 형식입니다.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString validateFunction = duIsEmail,
//     String hintText = 'example@exmaple.com',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.emailAddress,
//           inputFormatters: [FilteringTextInputFormatter.deny('')],
//         );

//   ///주소 텍스트필드
//   DUTextField.address({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '주소',
//     String validateHintText = '주소를 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '주소를 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.streetAddress,
//           inputFormatters: [FilteringTextInputFormatter.deny('')],
//         );

//   ///생년월일 텍스트필드
//   DUTextField.birthday({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '생년월일',
//     String validateHintText = '생년월일을 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '생년월일를 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.number,
//           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//         );

//   ///금액 텍스트필드
//   DUTextField.money({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '금액',
//     String validateHintText = '금액을 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '숫자만 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     _ReturnVoidValueString? onSubmit,
//     String unitText = "원",
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: TextInputType.number,
//           unitText: unitText,
//           inputFormatters: [ThousandsFormatter()],
//         );

//   ///기타 텍스트필드
//   DUTextField.other({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '기타',
//     String validateHintText = '내용을 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueDynamic? onChanged,
//     TextEditingController? controller,
//     InputDecoration? decoration,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '내용을 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     int? maxLength,
//     Widget? button,
//     TextInputType? keyboardType,
//     List<TextInputFormatter>? inputFormatters,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//   }) : _stateWidget = _DefaultInputStateBody(
//           initialValue: initialValue,
//           title: title,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           controller: controller,
//           decoration: decoration,
//           hintText: hintText,
//           labelText: labelText,
//           errorText: errorText,
//           isLabel: isLabel,
//           maxLength: maxLength,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           validateFunction: validateFunction,
//           keyboardType: keyboardType,
//           inputFormatters: inputFormatters,
//         );

//   DUTextField.sufIcoSvg({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '주소검색',
//     String validateHintText = '주소를 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueString? onChanged,
//     GestureTapCallback? resetInput,
//     TextEditingController? controller,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '주소를 입력해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//     String icon = DUIcons.svgSearch,
//     String aftIcon = DUIcons.svgClose,
//     _ReturnVoidValueString? onResult,
//     bool bAftIconNone = false,
//   }) : _stateWidget = _TextFieldIconButtonStateBody(
//           initialValue: initialValue,
//           resetInput: resetInput,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           title: title,
//           isLabel: isLabel,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           labelText: labelText,
//           errorText: errorText,
//           hintText: hintText,
//           controller: controller,
//           onResult: onResult,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           icon: _DivisionIconWidget(icon),
//           aftIcon: _DivisionIconWidget(bAftIconNone ? icon : aftIcon),
//           isSvg: true,
//         );

//   DUTextField.sufIcoWidget({
//     String? initialValue,
//     bool? autofocus,
//     bool? isValidate,
//     String title = '주소검색',
//     String validateHintText = '주소를 정확히 입력해주세요.',
//     _ReturnVoidValueDynamic? onSaved,
//     _ReturnVoidValueString? onChanged,
//     GestureTapCallback? resetInput,
//     TextEditingController? controller,
//     _ReturnBoolValueString? validateFunction,
//     String hintText = '주소를 검색해주세요.',
//     String? labelText,
//     String? errorText,
//     bool? isLabel,
//     _ReturnVoidValueString? onSubmit,
//     bool? isRequired,
//     required Widget icon,
//     Widget? aftIcon,
//     _ReturnVoidValueString? onResult,
//   }) : _stateWidget = _TextFieldIconButtonStateBody(
//           initialValue: initialValue,
//           resetInput: resetInput,
//           autofocus: autofocus,
//           isValidate: isValidate,
//           validateHintText: validateHintText,
//           title: title,
//           isLabel: isLabel,
//           onSubmit: onSubmit,
//           isRequired: isRequired,
//           labelText: labelText,
//           errorText: errorText,
//           hintText: hintText,
//           controller: controller,
//           onResult: onResult,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           isSvg: false,
//           icon: _DivisionIconWidget(icon),
//           aftIcon: _DivisionIconWidget(aftIcon ?? icon),
//         );

//   /// common widget
//   final State<StatefulWidget> _stateWidget;

//   @override
//   State<StatefulWidget> createState() => _stateWidget;
// }

// class _DefaultInputStateBody extends State<DUTextField> {
//   _DefaultInputStateBody({
//     required this.title,
//     _ReturnBoolValueString? validateFunction,
//     bool? autofocus,
//     bool? isValidate,
//     bool? obscureText,
//     bool? isLabel,
//     bool? isRequired,
//     this.initialValue = "",
//     this.validateHintText,
//     this.onSaved,
//     this.onChanged,
//     this.controller,
//     this.decoration,
//     this.hintText,
//     this.labelText,
//     this.errorText,
//     this.maxLength,
//     this.button,
//     this.onSubmit,
//     this.keyboardType,
//     this.inputFormatters,
//     this.unitText = '',
//   })  : this.validateFunction = validateFunction ?? duIsNotEmpty,
//         this.autofocus = autofocus ?? false,
//         this.isValidate = isValidate ?? false,
//         this.obscureText = obscureText ?? false,
//         this.isLabel = isLabel ?? true,
//         this.isRequired = isRequired ?? false;

//   ///내부 단위 표시 텍스트
//   final String unitText;

//   /// 초기 세팅값
//   final String? initialValue;

//   ///필수 표시 여부
//   final bool isRequired;

//   /// 좌측상단에 표시될 타이틀 명
//   final String title;

//   /// 자동 포커스 여부
//   bool? autofocus;

//   /// 조건식 확인여부
//   final bool isValidate;

//   /// validate용 함수
//   final _ReturnBoolValueString? validateFunction;

//   /// 조건식이 틀릴경우 보여줄 텍스트
//   final String? validateHintText;

//   /// 저장시 콜백함수
//   final _ReturnVoidValueDynamic? onSaved;

//   /// 변경시 콜백함수
//   final _ReturnVoidValueDynamic? onChanged;

//   /// 텍스트 컨트롤러
//   final TextEditingController? controller;

//   /// InputDecoration
//   final InputDecoration? decoration;

//   /// InputDecoration hintText - decoration 옵션 사용시 사용안함
//   final String? hintText;

//   /// InputDecoration labelText - decoration 옵션 사용시 사용안함
//   final String? labelText;

//   /// InputDecoration errorText - decoration 옵션 사용시 사용안함
//   final String? errorText;

//   /// 라벨 사용여부
//   final bool isLabel;

//   /// 입력값 최대길이
//   final int? maxLength;

//   /// 입력값 키보드타입
//   final TextInputType? keyboardType;

//   /// 입력값 포맷
//   final List<TextInputFormatter>? inputFormatters;

//   /// 입력값 감추기 여부(ex:비밀번호:****)
//   final bool obscureText;

//   /// 버튼 위젯
//   final Widget? button;

//   /// submit action
//   final _ReturnVoidValueString? onSubmit;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (isLabel == true)
//           Row(
//             children: [
//               Text(
//                 title,
//                 style: DUTextStyle.black_2D2D2D_14,
//               ),
//               SizedBox(
//                 width: 4,
//               ),
//               Container(
//                 width: 4,
//                 height: 4,
//                 decoration: isRequired == true
//                     ? BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: DUColors.purple_7540EE,
//                       )
//                     : null,
//               ),
//             ],
//           ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: TextFormField(
//                 initialValue: initialValue,
//                 autofocus: autofocus!,
//                 onSaved: onSaved,
//                 onChanged: onChanged,
//                 controller: controller,
//                 decoration: decoration != null
//                     ? decoration
//                     : _inputDecoration(
//                         labelText,
//                         hintText,
//                         errorText,
//                         unitText,
//                       ),
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: (value) {
//                   if (isValidate == false) return null;

//                   if (validateFunction != null && validateFunction!(value)) {
//                     return null;
//                   }

//                   return validateHintText;
//                 },
//                 obscureText: obscureText,
//                 keyboardType: keyboardType,
//                 onEditingComplete: () => FocusScope.of(context).nextFocus(),
//                 maxLength: maxLength,
//                 inputFormatters: inputFormatters,
//                 onFieldSubmitted: onSubmit,
//               ),
//             ),
//             button == null ? Container() : button!,
//           ],
//         ),
//       ],
//     );
//   }
// }

// class _TextFieldIconButtonStateBody extends State<DUTextField> {
//   _TextFieldIconButtonStateBody({
//     required this.title,
//     _ReturnBoolValueString? validateFunction,
//     bool? autofocus,
//     bool? isValidate,
//     bool? isLabel,
//     bool? isRequired,
//     required this.icon,
//     required this.aftIcon,
//     required this.initialValue,
//     required this.isSvg,
//     this.controller,
//     this.hintText,
//     this.labelText,
//     this.errorText,
//     this.onSaved,
//     this.onChanged,
//     this.onSubmit,
//     this.validateHintText,
//     this.onResult,
//     this.resetInput,
//   })  : this.validateFunction = validateFunction ?? duIsNotEmpty,
//         this.autofocus = autofocus ?? false,
//         this.isValidate = isValidate ?? false,
//         this.isLabel = isLabel ?? false,
//         this.isRequired = isRequired ?? false;

//   /// SvgPicture 여부
//   final bool isSvg;

//   /// 조건식 확인여부
//   final bool isValidate;

//   /// 자동 포커스 여부
//   bool autofocus;

//   /// 텍스트 컨트롤러
//   final TextEditingController? controller;

//   /// 초기 세팅값
//   final String? initialValue;

//   /// 저장시 콜백함수
//   final _ReturnVoidValueStringSafe? onSaved;

//   /// 변경시 콜백함수
//   final _ReturnVoidValueString? onChanged;

//   /// 이미지 버튼 눌렀을 경우 리턴되는 값
//   final _ReturnVoidValueString? onResult;

//   /// 검색어 리셋 이벤트
//   final GestureTapCallback? resetInput;

//   /// validate용 함수
//   final _ReturnBoolValueString? validateFunction;

//   ///라벨명
//   final String? labelText;

//   ///힌트 텍스트
//   final String? hintText;

//   ///에러 텍스트
//   final String? errorText;

//   /// 조건식이 틀릴경우 보여줄 텍스트
//   final String? validateHintText;

//   ///필수 표시 여부
//   final bool isRequired;

//   /// 좌측상단에 표시될 타이틀 명
//   final String title;

//   /// 라벨 사용여부
//   final bool isLabel;

//   /// 버튼 이미지
//   final Widget icon;

//   /// 터치했을 경우의 이미지
//   final Widget aftIcon;

//   /// submit action
//   final _ReturnVoidValueString? onSubmit;

//   /// 버튼 터치여부
//   late bool bDirtyBtn;

//   /// 현재 입력된 값
//   late String? contentStr;

//   ///현재 textFiled Controller
//   late TextEditingController currentController;

//   @override
//   void initState() {
//     super.initState();
//     bDirtyBtn = false;
//     contentStr = initialValue;
//     currentController = controller ?? TextEditingController();
//   }

//   textClear(BuildContext context) {
//     if (bDirtyBtn == true) {
//       FocusScope.of(context).unfocus();
//       if (onResult != null) {
//         onResult!(currentController.text);
//       }
//       return;
//     }

//     currentController.clear();
//     if (resetInput != null) resetInput!.call();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (isLabel == true)
//           Row(
//             children: [
//               Text(
//                 title,
//                 style: DUTextStyle.black_2D2D2D_14,
//               ),
//               SizedBox(
//                 width: 4,
//               ),
//               Container(
//                 width: 4,
//                 height: 4,
//                 decoration: isRequired == true
//                     ? BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: DUColors.purple_7540EE,
//                       )
//                     : null,
//               ),
//             ],
//           ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: TextFormField(
//                 initialValue: contentStr,
//                 controller: currentController,
//                 onSaved: onSaved,
//                 autofocus: autofocus,
//                 onChanged: onChanged,
//                 onTap: () {
//                   if (bDirtyBtn == true) {
//                     bDirtyBtn = false;
//                     setState(() {
//                       currentController.clear();
//                       if (resetInput != null) resetInput!.call();
//                     });
//                   }
//                 },
//                 textInputAction: TextInputAction.search,
//                 onEditingComplete: () {
//                   bDirtyBtn = !bDirtyBtn;
//                   setState(() {
//                     textClear(context);
//                   });
//                 },
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 onFieldSubmitted: onSubmit,
//                 validator: (value) {
//                   if (isValidate == false) return null;

//                   if (validateFunction != null && validateFunction!(value)) {
//                     return null;
//                   }

//                   return validateHintText;
//                 },
//                 decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.only(
//                       top: 16, left: 8, bottom: 16, right: 0),
//                   isDense: true,
//                   labelText: labelText,
//                   hintText: hintText,
//                   errorText: errorText,
//                   hintStyle: const TextStyle(
//                       fontSize: 14, color: DUColors.grey_D8D8D8),
//                   suffixIconConstraints: BoxConstraints(
//                     minHeight: 0,
//                     minWidth: 0,
//                   ),
//                   suffixIcon: isSvg
//                       ? IconButton(
//                     icon: bDirtyBtn ? aftIcon : icon,
//                     onPressed: () {
//                       if (bDirtyBtn == false && currentController.text == "")
//                         return;

//                       bDirtyBtn = !bDirtyBtn;
//                             setState(() {
//                               textClear(context);
//                             });
//                           },
//                         )
//                       : GestureDetector(
//                           child: bDirtyBtn ? aftIcon : icon,
//                           onTap: () {
//                             if (bDirtyBtn == false &&
//                                 currentController.text == "") return;

//                       bDirtyBtn = !bDirtyBtn;
//                       setState(() {
//                         textClear(context);
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class DUTextFields extends StatelessWidget {
//   const DUTextFields(
//       {this.title = '', required this.children, this.infixText = '~'});

//   final String title;
//   final List<DUTextField> children;
//   final String infixText;

//   @override
//   Widget build(BuildContext context) {
//     return _textFields(context);
//   }

//   Widget _textFields(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (title.isNotEmpty) DUTitle.size14(title),
//         if (title.isNotEmpty) DUSizedBox.h4(),
//         _ReturnWidget(children, infixText),
//       ],
//     );
//   }
// }

// class _DivisionIconWidget extends StatelessWidget {
//   _DivisionIconWidget(dynamic icon, {Key? key})
//       : this.widget = icon is Widget
//             ? icon
//             : icon is String && RegExp(r'^/|//|(/[\w-]+)+.svg$').hasMatch(icon)
//                 ? SvgPicture.asset(icon)
//                 : Container(),
//         super(key: key);

//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return widget;
//   }
// }

// /*
//  * =========================  공통 Function  ====================================
//  */
// InputDecoration _inputDecoration(
//     String? labelText, String? hintText, String? errorText, String unitText) {
//   return InputDecoration(
//     contentPadding:
//         const EdgeInsets.only(top: 16, left: 8, bottom: 16, right: 0),
//     isDense: true,
//     labelText: labelText,
//     hintText: hintText,
//     errorText: errorText,
//     hintStyle: const TextStyle(fontSize: 14, color: DUColors.grey_D8D8D8),
//     suffixIcon: Text(unitText),
//     suffixIconConstraints: BoxConstraints(
//       minHeight: 0,
//       minWidth: 0,
//     ),
//     counterText: '',
//   );
// }

// /*
//  * =========================  TextField 배열처리 Function  =======================
//  */
// class _ReturnWidget extends StatelessWidget {
//   _ReturnWidget(this.fields, this.infixText);

//   final String infixText;
//   final List<DUTextField> fields;
//   final List<Widget> widgets = [];

//   @override
//   Widget build(BuildContext context) {
//     fields.forEach((e) {
//       if (widgets.length > 0) {
//         widgets.add(
//           Container(
//             padding: DUPadding.all8,
//             child: Text(
//               infixText,
//               style: DUTextStyle.black_2D2D2D_14,
//             ),
//           ),
//         );
//       }

//       widgets.add(Expanded(
//         child: e,
//       ));
//     });

//     return Row(
//       children: [...widgets],
//     );
//   }
// }

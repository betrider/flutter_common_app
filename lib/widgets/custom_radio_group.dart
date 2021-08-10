import 'package:flutter_common_app/index.dart';

class CustomRadioGroup extends StatefulWidget {
  CustomRadioGroup({
    required this.radioMap,
    required this.onChanged,
    required this.isLine,
    required this.padding,
  });

  @override
  State<StatefulWidget> createState() => CustomRadioGroupState();

  /// 제목
  final Map<String, String> radioMap;

  /// 변경 콜백
  final ValueChanged<String> onChanged;

  /// 패딩
  final EdgeInsetsGeometry? padding;

  /// 라인추가 여부
  final bool isLine;
}

class CustomRadioGroupState extends State<CustomRadioGroup> {
  late String groupValue;

  @override
  void initState() {
    super.initState();
    groupValue = widget.radioMap.entries.toList()[0].key;
  }

  @override
  Widget build(BuildContext context) {
    return getWidgets(widget.radioMap);
  }

  Widget getWidgets(Map<String, String> strings) {
    List<Widget> copyList = [];
    strings.forEach((key, mapValue) {
      copyList.add(
        Container(
          padding: widget.padding,
          constraints: BoxConstraints(minHeight: 40),
          decoration: widget.isLine
              ? BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1, color: AppColor.grey_B7B7B7)))
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(minWidth: 100),
                child: Text(
                  mapValue,
                  style: AppTextStyle.black_16_w400,
                ),
              ),
              Radio<String>(
                value: key,
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value!;
                  });
                  return widget.onChanged(value!);
                },
              ),
            ],
          ),
        ),
      );
    });
    return Column(children: copyList);
  }
}
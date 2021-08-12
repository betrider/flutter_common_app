import 'package:flutter_common_app/index.dart';

class ButtonModel {
  /// 버튼 텍스트
  final String buttonText;

  /// 버튼 클릭 이벤트
  final void Function() onPressed;

  ButtonModel({required this.buttonText, required this.onPressed});
}

class CustomButtonBar extends StatelessWidget {
  CustomButtonBar.text({
    required List<ButtonModel> buttonModelList,
  }) : _widget = _Text(
          buttonModelList: buttonModelList,
        );

  CustomButtonBar.choice({
    required List<String> buttonTextList,
    int selectIndex = 0,
    required void Function(int index) onChanged,
  }) : _widget = _Choice(
          buttonTextList: buttonTextList,
          selectIndex: selectIndex,
          onChanged: onChanged,
        );

  CustomButtonBar.widget({
    required List<Widget> widgetList,
    Widget? dividerWidget,
  }) : _widget = _Widget(widgetList: widgetList, dividerWidget: dividerWidget);

  CustomButtonBar.grid({
    required List<Widget> widgetList,
    int crossAxisCount = 2,
    double crossAxisSpacing = 8,
    double mainAxisSpacing = 8,
  }) : _widget = _Grid(
          widgetList: widgetList,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
        );

  /// common widget
  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}

class _Text extends StatelessWidget {
  const _Text({required this.buttonModelList});

  /// 버튼 리스트
  final List<ButtonModel> buttonModelList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: AppColor.grey_8F8F8F),
      child: SeparatedRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: buttonModelList.mapWithIndex(
          (buttonModel, index) {
            return Expanded(
              child: Center(
                child: InkWell(
                  onTap: buttonModel.onPressed,
                  child: Text(
                    buttonModel.buttonText,
                    style: AppTextStyle.black_14_w400,
                  ),
                ),
              ),
            );
          },
        ),
        separatorBuilder: (context, index) {
          return Container(
            width: 1,
            height: 16,
            color: AppColor.grey_8F8F8F,
          );
        },
      ),
    );
  }
}

class _Choice extends StatefulWidget {
  _Choice({
    required this.buttonTextList,
    required this.selectIndex,
    required this.onChanged,
  });

  final List<String> buttonTextList;
  final int selectIndex;
  final void Function(int index) onChanged;

  @override
  __ChoiceState createState() => __ChoiceState();
}

class __ChoiceState extends State<_Choice> {
  late List<String> _buttonTextList;
  late int _selectIndex;

  @override
  void initState() {
    super.initState();
    _buttonTextList = widget.buttonTextList;
    _selectIndex = widget.selectIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Row(
        children: _buttonTextList.mapWithIndex(
          (value, index) {
            if (index == 0) {
              return getLeftButton(value, index);
            } else if (index == _buttonTextList.length - 1) {
              return getRightButton(value, index);
            } else {
              return getCenterButton(value, index);
            }
          },
        ),
      ),
    );
  }

  Expanded getLeftButton(String text, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectIndex = index;
          });
          return widget.onChanged(index);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
            ),
            color: _selectIndex == index
                ? AppColor.mainColor
                : AppColor.grey_8F8F8F,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: _selectIndex == index
                ? AppTextStyle.white_14_w400
                : AppTextStyle.grey_14_w400
          ),
        ),
      ),
    );
  }

  Expanded getCenterButton(String text, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectIndex = index;
          });
          return widget.onChanged(index);
        },
        child: Container(
          color: _selectIndex == index
              ? AppColor.mainColor
              : AppColor.grey_8F8F8F,
          alignment: Alignment.center,
          child: Text(
            text,
            style: _selectIndex == index
                ? AppTextStyle.white_14_w400
                : AppTextStyle.grey_14_w400,
          ),
        ),
      ),
    );
  }

  Expanded getRightButton(String text, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _selectIndex = index;
          });
          return widget.onChanged(index);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
            color: _selectIndex == index
                ? AppColor.mainColor
                : AppColor.grey_8F8F8F,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: _selectIndex == index
                ? AppTextStyle.white_14_w400
                : AppTextStyle.grey_14_w400,
          ),
        ),
      ),
    );
  }
}

class _Widget extends StatelessWidget {
  const _Widget({required this.widgetList, this.dividerWidget});

  /// 위젯 리스트
  final List<Widget> widgetList;
  final Widget? dividerWidget;

  @override
  Widget build(BuildContext context) {
    return SeparatedRow(
      children: widgetList.mapWithIndex(
        (widget, index) {
          return Expanded(child: widget);
        },
      ),
      separatorBuilder: (context, index) {
        return dividerWidget == null
            ? Container(
                width: 1,
                height: 16,
                color: AppColor.grey_8F8F8F,
              )
            : dividerWidget!;
      },
    );
  }
}

class _Grid extends StatelessWidget {
  _Grid({
    required this.crossAxisCount,
    required this.widgetList,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
  });

  /// 버튼 리스트
  final List<Widget> widgetList;

  /// 로우 최대 개수
  final int crossAxisCount;

  /// 세로축 버튼 여백
  final double crossAxisSpacing;

  /// 가로축 버튼 여백
  final double mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    int colMaxCount = (widgetList.length / crossAxisCount).ceil();

    return Column(children: [
      for (var colCount = 0; colCount < colMaxCount; colCount++) ...[
        Row(
          children: [
            for (var rowCount = 0; rowCount < crossAxisCount; rowCount++) ...[
              if (colCount * crossAxisCount + rowCount < widgetList.length)
                Expanded(
                  child: widgetList[colCount * crossAxisCount + rowCount],
                ),
              if (colCount * crossAxisCount + rowCount <
                      widgetList.length - 1 &&
                  rowCount < crossAxisCount - 1)

                ///세로측 여백
                SizedBox(
                  width: crossAxisSpacing,
                )
            ]
          ],
        ),
        if (colCount < colMaxCount - 1)

          ///가로측 여백
          SizedBox(
            height: mainAxisSpacing,
          )
      ]
    ]);
  }
}

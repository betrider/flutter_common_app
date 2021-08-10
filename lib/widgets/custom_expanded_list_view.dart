import 'package:flutter_common_app/index.dart';

class CustomListViewExpanded extends StatefulWidget {
  const CustomListViewExpanded({
    this.buttonText = '전체보기',
    this.buttonPadding = const EdgeInsets.symmetric(horizontal: 16),
    required this.listWidget,
    this.separatorWidget = const SizedBox(),
  });

  /// 버튼 명
  final String buttonText;

  /// 버튼 패딩
  final EdgeInsets buttonPadding;

  /// 리스트 위젯
  final List<Widget> listWidget;

  /// 리스트 사이에 표시 할 위젯
  final Widget separatorWidget;

  @override
  _CustomListViewExpandedState createState() =>
      _CustomListViewExpandedState();
}

class _CustomListViewExpandedState extends State<CustomListViewExpanded> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemCount: widget.listWidget.length,
            itemBuilder: (context, index) {
              return widget.listWidget[index];
            },
            separatorBuilder: (context, index) {
              return widget.separatorWidget;
            },
          )
        : Column(
            children: [
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount:
                    widget.listWidget.length < 4 ? widget.listWidget.length : 4,
                itemBuilder: (context, index) {
                  return widget.listWidget[index];
                },
                separatorBuilder: (context, index) {
                  return widget.separatorWidget;
                },
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: widget.buttonPadding,
                child: CustomButton.elevated(
                  width: double.infinity,
                  child: Text(widget.buttonText),
                  onPressed: () {
                    setState(() {
                      isExpanded = true;
                    });
                  },
                ),
              ),
            ],
          );
  }
}

import 'package:flutter_common_app/index.dart';

class CustomExpandedView extends StatefulWidget {
  const CustomExpandedView({
    Key? key,
    this.height = 500,
    required this.listWidget,
  }) : super(key: key);

  final double height;
  final List<Widget> listWidget;

  @override
  _CustomExpandedViewState createState() => _CustomExpandedViewState();
}

class _CustomExpandedViewState extends State<CustomExpandedView> {
  ///위젯 사이즈 체크
  Size? _size;

  ///확장여부
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return MeasuredSize(
      onChange: (size) {
        setState(() {
          _size = size;
          if (_size!.height < widget.height) {
            _isExpanded = true;
          }
        });
      },
      child: _size == null
          ? Opacity(
              opacity: 0,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.listWidget.length,
                itemBuilder: (context, index) {
                  return widget.listWidget[index];
                },
              ),
            )
          : _isExpanded
              ? Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: widget.listWidget.length,
                      itemBuilder: (context, index) {
                        return widget.listWidget[index];
                      },
                    ),
                  ],
                )
              : Column(
                  children: [
                    SizedBox(
                      height: widget.height,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.listWidget.length,
                        itemBuilder: (context, index) {
                          return widget.listWidget[index];
                        },
                      ),
                    ),
                    OutlinedButton(
                      child: Text('상세정보 펼쳐보기'),
                      onPressed: () {
                        setState(() {
                          _isExpanded = true;
                        });
                      },
                    ),
                  ],
                ),
    );
  }
}

import 'package:flutter_common_app/index.dart';

class CustomExpantionTile extends StatefulWidget {

  const CustomExpantionTile({
    Key? key,
    required this.header,
    required this.body,
    this.backgroundColor,
    this.initiallyExpanded = false,
  }) : super(key: key);

  final Widget header;

  final Widget body;

  final Color? backgroundColor;

  final bool initiallyExpanded;
  

  @override
  _CustomExpantionTileState createState() => _CustomExpantionTileState();
}

class _CustomExpantionTileState extends State<CustomExpantionTile> {

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent, hoverColor: Colors.transparent, highlightColor: Colors.transparent, splashColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: widget.initiallyExpanded,
        textColor: Colors.black,
        collapsedBackgroundColor: widget.backgroundColor, //닫혀있을때 백그라운드 색상
        backgroundColor: widget.backgroundColor, //펼쳐졌을때 백그라운드 색상
        title: widget.header,
        tilePadding: EdgeInsets.zero,
        children: <Widget>[widget.body],
        trailing: isExpanded
            ? getIconWidget(AppIcons.svgExpandLessSM)
            : getIconWidget(AppIcons.svgExpandMoreSM),
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = value;
          });
        },
      ),
    );
  }
}

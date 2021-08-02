import 'package:flutter_common_app/index.dart';

class CustomSliderList extends StatefulWidget {
  CustomSliderList({
    required this.title,
    this.centerTitle = true,
    required this.header,
    required this.body,
  });

  ///앱 바 타이틀명
  final String title;

  ///앱 바 타이틀 중앙정렬 여부
  final bool? centerTitle;

  ///상단에 표시될 위젯
  final Widget header;

  ///하단에 표시될 위젯
  final Widget body;

  @override
  _CustomSliderListState createState() => _CustomSliderListState();
}

class _CustomSliderListState extends State<CustomSliderList> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: _SABT(child: Text(widget.title.toString())),
            leading: _AppBarSABT(iconData: Icons.arrow_back),
            elevation: 1,
            centerTitle: true,
            expandedHeight: 200.0,
            floating: false, //헤더,바디 하나의 리스트처럼(false)
            pinned: true, //축소 시 앱바표시여부
            flexibleSpace: FlexibleSpaceBar(
              background: widget.header,
            ),
          ),
        ];
      },
      body: widget.body,
    );
  }
}

//포지션에 맞게 Visibility를 설정하는 위젯
class _SABT extends StatefulWidget {
  final Widget child;

  const _SABT({Key? key, required this.child}) : super(key: key);
  @override
  _SABTState createState() {
    return new _SABTState();
  }
}

class _SABTState extends State<_SABT> {
  ScrollPosition? _position;
  bool _visible = true;

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings? settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    bool visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      child: widget.child,
    );
  }
}

class _AppBarSABT extends StatefulWidget {
  final IconData? iconData;

  const _AppBarSABT({Key? key, required this.iconData}) : super(key: key);
  @override
  _AppBarSABTState createState() {
    return new _AppBarSABTState();
  }
}

class _AppBarSABTState extends State<_AppBarSABT> {
  ScrollPosition? _position;
  bool _visible = true;

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final FlexibleSpaceBarSettings? settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    bool visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _visible
        ? Icon(
            widget.iconData,
            color: Colors.black,
          )
        : Icon(
            widget.iconData,
            color: Colors.white,
          );
  }
}

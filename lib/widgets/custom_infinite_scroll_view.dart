import 'package:flutter_common_app/index.dart';

class CustomInfiniteScrollView extends StatefulWidget {

  CustomInfiniteScrollView({

    /// 새로 로딩할 페이지 카운트
    this.pageCount = 10,

    /// 검색 최대 카운트
    this.maxCount = 30,

    /// 호출할 API
    required this.api,

    /// 아이템 빌더
    required this.itemBuilder,
  });

  final int pageCount;
  final int maxCount;
  final Future<List<int>> Function(int start) api;
  final Widget Function(BuildContext context, int count, dynamic result)
      itemBuilder;

  @override
  _CustomInfiniteScrollViewState createState() => _CustomInfiniteScrollViewState();
}

class _CustomInfiniteScrollViewState extends State<CustomInfiniteScrollView> {
  ScrollController scrollController = ScrollController();

  /// 데이터
  List<dynamic> data = [];

  /// 로딩여부
  bool isLoading = false;

  /// 추가 호출 여부
  bool hasMore = false;

  @override
  void initState() {
    super.initState();
    _loadData();
    // scrollController.offset >= scrollController.position.maxScrollExtent * 0.7
    this.scrollController.addListener(() {
      if (this.scrollController.position.pixels ==
              this.scrollController.position.maxScrollExtent &&
          this.hasMore) {
        _loadData();
      }
    });
  }

  /// API호출부분
  _loadData() async {
    // show loading
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 2));

    // call API
    int offset = data.length;
    dynamic appendData = await widget.api(offset);

    // data input
    setState(() {
      data.addAll(appendData);
      isLoading = false;
      hasMore = data.length < widget.maxCount;
    });
  }

  /// 새로고침
  _refresh() async {
    setState(() {
      isLoading = true;
      data.clear();
    });
    await Future.delayed(Duration(seconds: 2));
    _loadData();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          controller: scrollController,
          itemBuilder: (_, index) {
            if (index < data.length) {
              return widget.itemBuilder(context, index, data[index]);
            }
            if (hasMore || isLoading) {
              return Center(child: RefreshProgressIndicator());
            }
            return Container(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: [
                    Text('데이터의 마지막 입니다'),
                    IconButton(
                      onPressed: () {
                        _refresh();
                      },
                      icon: Icon(Icons.refresh_outlined),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => Divider(),
          itemCount: data.length + 1,
        ),
      ),
    );
  }
}

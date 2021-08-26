import 'package:flutter_common_app/index.dart';

class CustomCategoryPage extends StatefulWidget {
  CustomCategoryPage({required this.appTitle, required this.categoryData});

  final String appTitle;
  final Map<String, dynamic> categoryData;

  @override
  _CustomCategoryPageState createState() => _CustomCategoryPageState();
}

class _CustomCategoryPageState extends State<CustomCategoryPage> {
  ItemScrollController _scrollController = ItemScrollController();
  double _pageWidth = Get.width / 2;
  List<String> _selectKeyList = [];

  //뒤로가기버튼 이벤트
  Future<bool> _onBackPressed() async {
    if (_selectKeyList.length == 0) {
      return true;
    } else if (_selectKeyList.length <= 1) {
      setState(() {
        _selectKeyList.removeLast();
      });
    } else {
      await _scrollController.scrollTo(
        index: _selectKeyList.length - 2,
        duration: Duration(milliseconds: 250),
      );
      setState(() {
        _selectKeyList.removeLast();
      });
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    int maxLength = 1 + _selectKeyList.length;

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: CustomScaffold(
        appBar: CustomAppBar(
          leading: CustomIconButton(
            icon: Icons.close,
            onPressed: () {},
          ),
          title: widget.appTitle,
          actions: [
            TextButton(
              child: Text(
                '확인',
                style: _selectKeyList.isEmpty
                    ? AppTextStyle.black_16_w400
                    : AppTextStyle.main_16_w400,
              ),
              onPressed: _selectKeyList.isNotEmpty
                  ? () {
                      Get.back<List>(result: _selectKeyList);
                    }
                  : null,
            )
          ],
        ),
        body: ScrollablePositionedList.builder(
            itemScrollController: _scrollController,
            scrollDirection: Axis.horizontal,
            physics: CustomScrollPhysics(itemDimension: _pageWidth),
            itemCount: maxLength,
            itemBuilder: (context, pageIndex) {
              return pageIndex == 0
                  ? _getMainItemList()
                  : _getSubItemList(pageIndex);
            }),
      ),
    );
  }

  //메인아이템 위젯
  Container _getMainItemList() {
    return Container(
      height: double.infinity,
      width: _pageWidth,
      color: AppColor.grey_EDEDED,
      child: ListView.builder(
        itemCount: widget.categoryData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () async {
              //선택된 아이템
              String selectItem = widget.categoryData.getKeyFromIndex(index);

              //선택된 자료 모두 초기화
              if (_selectKeyList.length != 0) {
                _selectKeyList.clear();
              }

              //선택된아이템의 하위리스트
              dynamic selectSubMap = widget.categoryData[selectItem];
              List selectSubList = selectSubMap.keys.toList();

              //하위리스트 추가
              if (selectSubList.isNotEmpty) {
                setState(() {
                  _selectKeyList.add(selectItem);
                });
              } else {
                setState(() {
                  _selectKeyList.add(selectItem);
                });
              }
            },
            child: Container(
              height: 44,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              child: Text(
                widget.categoryData.getKeyFromIndex(index),
                style: _selectKeyList.isEmpty
                    ? AppTextStyle.black_16_w400
                    : _selectKeyList[0] ==
                            widget.categoryData.getKeyFromIndex(index)
                        ? AppTextStyle.main_16_w400
                        : AppTextStyle.black_16_w400,
              ),
            ),
          );
        },
      ),
    );
  }

  //서브아이템 위젯
  Widget _getSubItemList(int pageIndex) {
    //첫번째 서브아이템이 없는 경우
    if (widget.categoryData[_selectKeyList[0]].length == 0) return Container();

    //선택한 카테고리 가져오기
    Map<String, dynamic> subCategoryData = widget.categoryData;
    try {
      for (var i = 0; i < pageIndex; i++) {
        subCategoryData = subCategoryData[_selectKeyList[i]];
      }
    } catch (e) {
      return Container();
    }

    List<String> _subItemList = subCategoryData.keys.toList();

    return Container(
      height: double.infinity,
      width: _pageWidth,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: AppColor.grey_B7B7B7, width: 1),
        ),
      ),
      child: ListView.builder(
        itemCount: _subItemList.length,
        itemBuilder: (context, subItemIndex) {
          return InkWell(
            onTap: () async {
              //선택된 아이템
              String selectItem = _subItemList[subItemIndex];

              //선택된 자료 초기화
              if (_selectKeyList.length > pageIndex) {
                _selectKeyList.removeRange(pageIndex, _selectKeyList.length);
                _subItemList.removeRange(pageIndex, _subItemList.length);
              }

              //선택된아이템의 하위리스트
              dynamic selectSubMap = subCategoryData[selectItem];
              List selectSubItem = selectSubMap.keys.toList();

              //하위리스트 추가
              setState(() {
                _selectKeyList.add(selectItem);
              });

              if (selectSubItem.isNotEmpty) {
                _scrollController.scrollTo(
                  index: pageIndex + 1,
                  duration: Duration(milliseconds: 250),
                );
              }
            },
            child: Container(
              height: 44,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColor.grey_EDEDED, width: 1),
                ),
              ),
              padding: EdgeInsets.only(left: 16),
              child: Text(
                _subItemList[subItemIndex].toString(),
                style: _selectKeyList.length < pageIndex + 1
                    ? AppTextStyle.black_16_w400
                    : _selectKeyList[pageIndex] == _subItemList[subItemIndex]
                        ? AppTextStyle.main_16_w400
                        : AppTextStyle.black_16_w400,
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:du_mobile/index.dart';

// class SampleTestPage extends StatefulWidget {
//   SampleTestPage({Key? key}) : super(key: key);

//   @override
//   _SampleTestPageState createState() => _SampleTestPageState();
// }

// class _SampleTestPageState extends State<SampleTestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ElevatedButton(
//         child: Text('가져오기'),
//         onPressed: () async {
//           List? result = await DUCategoryPage(
//             appTitle: '상품카테고리',
//             categoryData: {
//               '가구 인테리어': {},
//               '도서': {
//                 '국내여행/체험123': {},
//                 '렌터카123': {},
//                 '생활편의123': {},
//               },
//               '디지털/가전': {},
//               '생활/건강': {
//                 '국내여행/체험': {},
//                 '렌터카': {},
//                 '생활편의': {},
//               },
//               '스포츠/레저': {},
//               '식품': {},
//               '여가/생활편의': {
//                 '국내여행/체험': {},
//                 '렌터카': {},
//                 '생활편의': {},
//                 '예체능레슨': {},
//                 '원데이클래스': {},
//                 '자기개발/취미 레슨': {},
//                 '해외여행': {},
//                 '홈케어서비스': {
//                   '국내여행/체험2': {},
//                   '렌터카2': {},
//                   '생활편의2': {},
//                   '예체능레슨2': {},
//                   '원데이클래스2': {},
//                   '자기개발/취미 레슨2': {},
//                   '해외여행2': {},
//                   '홈케어서비스2': {},
//                 },
//               },
//               '출산/육아': {},
//               '패션의류': {},
//               '패션잡화': {},
//               '화장품/미용': {
//                 '국내여행/체험': {
//                   '국내여행/체험1': {
//                     '국내여행/체험1': {},
//                   },
//                   '렌터카1': {
//                     '렌터카1': {},
//                   },
//                   '생활편의1': {
//                     '생활편의1': {},
//                   },
//                 },
//                 '렌터카': {
//                   '국내여행/체험2': {},
//                   '렌터카2': {},
//                   '생활편의2': {},
//                 },
//                 '생활편의': {
//                   '국내여행/체험3': {},
//                   '렌터카3': {},
//                   '생활편의3': {},
//                 },
//               },
//             },
//           ).getData<List>();
//           print(result);
//         },
//       ),
//     );
//   }
// }


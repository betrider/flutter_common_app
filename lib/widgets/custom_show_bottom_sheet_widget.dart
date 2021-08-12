import 'package:flutter_common_app/index.dart';

class BottomSheetModel {
  /// 타이틀
  final String title;

  /// 위젯
  final VoidCallback onTap;

  BottomSheetModel({required this.title, required this.onTap});
}

class CustomShowBottomSheetWidget extends StatelessWidget {
  const CustomShowBottomSheetWidget.custom({
    required this.widget,
  });

  CustomShowBottomSheetWidget.menu14({
    List<BottomSheetModel> menuList = const [],
    List<BottomSheetModel> deleteMenuList = const [],
  }) : widget = _Menu14(
          menuList: menuList,
          deleteMenuList: deleteMenuList,
        );

  CustomShowBottomSheetWidget.menu16({
    String className = '',
    List<BottomSheetModel> menuList = const [],
    List<BottomSheetModel> deleteMenuList = const [],
  }) : widget = _Menu16(
          className: className,
          menuList: menuList,
          deleteMenuList: deleteMenuList,
        );

  /// common widget
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return widget;
  }
}

class _Menu14 extends StatelessWidget {
  const _Menu14({
    required this.menuList,
    required this.deleteMenuList,
  });

  final List<BottomSheetModel> menuList;
  final List<BottomSheetModel> deleteMenuList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ...menuList
                .mapWithIndex(
                  (value, index) => SizedBox(
                    height: 56,
                    child: InkWell(
                      onTap: value.onTap,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              value.title,
                              style: AppTextStyle.black_14_w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            ...deleteMenuList
                .mapWithIndex(
                  (value, index) => SizedBox(
                    height: 56,
                    child: InkWell(
                      onTap: value.onTap,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(value.title, style: AppTextStyle.red_14_w400),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text(
                '취소',
                style: AppTextStyle.black_14_w400,
              ),
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Menu16 extends StatelessWidget {
  const _Menu16({
    required this.className,
    required this.menuList,
    required this.deleteMenuList,
  });

  final String className;
  final List<BottomSheetModel> menuList;
  final List<BottomSheetModel> deleteMenuList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (className.isNotEmpty)
              Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      className,
                      style: AppTextStyle.grey_16_w400,
                    ),
                  ],
                ),
              ),
            ...menuList
                .mapWithIndex(
                  (value, index) => SizedBox(
                    height: 56,
                    child: InkWell(
                      onTap: value.onTap,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              value.title,
                              style: AppTextStyle.black_16_w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            ...deleteMenuList
                .mapWithIndex(
                  (value, index) => SizedBox(
                    height: 56,
                    child: InkWell(
                      onTap: value.onTap,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(value.title, style: AppTextStyle.red_14_w400),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            Divider(
              height: 1,
            ),
            ListTile(
              title: Text(
                '취소',
                style: AppTextStyle.black_16_w400,
              ),
              onTap: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}

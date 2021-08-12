import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/widgets/custom_button.dart';

class ProfileModel {
  /// 프로필 타이틀
  final String? title;

  /// 프로필 서브타이틀
  final String? subTitle;

  /// 프로필 이미지 경로
  final String? imagePath;

  ProfileModel({
    this.title,
    this.subTitle,
    this.imagePath,
  });
}

class CustomSelectProfileList extends StatefulWidget {
  CustomSelectProfileList({required this.profileList, required this.onTap});

  final List<ProfileModel> profileList;

  final void Function(List<ProfileModel> profileList) onTap;

  @override
  _CustomSelectProfileListState createState() => _CustomSelectProfileListState();
}

class _CustomSelectProfileListState extends State<CustomSelectProfileList> {
  bool get isAllSelect => widget.profileList.length == indexList.length;

  List<int> indexList = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('전체선택'),
              InkWell(
                onTap: () {
                  setState(() {
                    if (isAllSelect) {
                      indexList.clear();
                    } else {
                      indexList.clear();
                      widget.profileList.forEachIndexed(
                        (value, index) {
                          indexList.add(index);
                        },
                      );
                    }
                  });
                },
                child: isAllSelect
                    ? getIconWidget(AppIcons.checkboxOn)
                    : getIconWidget(AppIcons.checkboxOff),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: widget.profileList.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomListTile(
                      imageShape: ImageShape.CIRCLE,
                      imagePath: widget.profileList[index].imagePath!,
                      title: Text(widget.profileList[index].title!),
                      subTitle: widget.profileList[index].subTitle,
                      padding: EdgeInsets.zero,
                      onTap: () {
                        setState(() {
                          if (indexList.contains(index)) {
                            indexList.remove(index);
                          } else {
                            indexList.add(index);
                          }
                        });
                      },
                      isEffect: false,
                      trailing: indexList.contains(index)
                          ? getIconWidget(AppIcons.checkboxOn)
                          : getIconWidget(AppIcons.checkboxOff),
                    ),
                  )
                ],
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomButton.elevated(
            child: Text('추가'),
            onPressed: indexList.length == 0
                ? null
                : () {
                    indexList.sort();
                    return widget
                        .onTap(widget.profileList.toIndexList(indexList));
                  },
          ),
        ],
      ),
    );
  }
}

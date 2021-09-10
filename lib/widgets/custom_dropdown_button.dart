import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter_common_app/index.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({
    required this.title,
    required this.menuList,
    required this.onChanged,
  });

  final String title;
  final List<String> menuList;
  final ValueChanged<String> onChanged;

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  List<DropdownMenuItem> buildDropdownTestItems(List _testList) {
    List<DropdownMenuItem> items = [];
    for (var i in _testList) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(i['keyword']),
        ),
      );
    }
    return items;
  }

  void onChangeDropdownTests(selectedTest) {
    setState(() {
      _selectedTest = selectedTest;
    });
    return widget.onChanged(selectedTest.entries.last.value.toString());
  }

  late List<DropdownMenuItem> _dropdownTestItems;
  var _selectedTest;

  @override
  void initState() {
    super.initState();
    List _testList = widget.menuList.mapWithIndex((value, index) => {'no': index, 'keyword': value}).toList();
    _dropdownTestItems = buildDropdownTestItems(_testList);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DropdownBelow(
          itemWidth: constraints.maxWidth,
          itemTextstyle: AppTextStyle.black_12_w400,
          boxTextstyle: AppTextStyle.black_12_w400,
          boxDecoration: BoxDecoration(
            color: Colors.white,
          ),
          boxPadding: EdgeInsets.symmetric(horizontal: 8),
          boxWidth: constraints.maxWidth,
          boxHeight: 40,
          icon: getIconWidget(AppIcons.svgExpandMoreSM),
          hint: Text(
            widget.title,
            style: AppTextStyle.grey_12_w400
          ),
          value: _selectedTest,
          items: _dropdownTestItems,
          onChanged: onChangeDropdownTests,
        );
      },
    );
  }
}

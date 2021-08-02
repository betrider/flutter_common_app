import 'package:flutter_common_app/index.dart';
class SampleUtilityPage extends StatefulWidget {
  const SampleUtilityPage({Key? key}) : super(key: key);

  @override
  _SampleUtilityPageState createState() => _SampleUtilityPageState();
}

class _SampleUtilityPageState extends State<SampleUtilityPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; //화면 최초 호출 후 데이터 보존 여부

  late Widget _widget;

  late List<WidgetModel> listWidget;

  @override
  void initState() {
    super.initState();
    listWidget = [
      WidgetModel(title: 'SampleUsefulWidget', widget: SampleUsefulWidget()),
      WidgetModel(title: 'SampleUtility', widget: SampleUtility()),
      WidgetModel(title: 'SampleExtension', widget: SampleExtension()),
    ];
    _widget = listWidget[0].widget;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomScaffold(
      bodyPadding: EdgeInsets.symmetric(horizontal: 16),
      body: Column(
        children: <Widget>[
          Wrap(
            runSpacing: -10,
            spacing: 2,
            children: [
              ...listWidget
                  .mapWithIndex((widgetModel, index) => InkWell(
                        onTap: () {
                          setState(() {
                            _widget = widgetModel.widget;
                          });
                        },
                        child: Chip(
                          backgroundColor: Colors.amber[100],
                          label: Text(widgetModel.title),
                        ),
                      ).isEffectOff())
                  .toList()
            ],
          ),
          Divider(),
          Expanded(child: _widget)
        ],
      ),
    );
  }
}

class SampleSeparatedColumn extends StatelessWidget {
  const SampleSeparatedColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            '구분 열(SeparatedColumn)',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SeparatedColumn(
          children: [
            Text('1번'),
            Text('2번'),
            Text('3번'),
          ],
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Center(child: Text('구 분 값')),
            );
          },
        ),
      ],
    );
  }
}

class SampleSeparatedRow extends StatelessWidget {
  const SampleSeparatedRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            '구분 행(SeparatedRow)',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SeparatedRow(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1번'),
            Text('2번'),
            Text('3번'),
          ],
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Center(child: Text('구\n분\n값')),
            );
          },
        ),
      ],
    );
  }
}

class SampleIgnorePadding extends StatelessWidget {
  const SampleIgnorePadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            '패딩 무시(IgnorePadding - Ignore)',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey,
          child: IgnorePadding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  Container(
                      color: Colors.red,
                      child: Center(child: Text('Container'))),
                  Container(
                      color: Colors.blue,
                      child: Center(child: Text('Container'))),
                  Ignore(
                      child: Container(
                          color: Colors.red,
                          child: Center(child: Text('Ignore - Container')))),
                  Container(
                      color: Colors.blue,
                      child: Center(child: Text('Container'))),
                  Container(
                      color: Colors.red,
                      child: Center(child: Text('Container'))),
                ],
              )),
        ),
      ],
    );
  }
}

class SampleKeepAlive extends StatelessWidget {
  const SampleKeepAlive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            '상태유지(AutomaticKeepAliveScreen)',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        AutomaticKeepAliveScreen(
          child: Container(
            child: Text('상태유지'),
          ),
        ),
      ],
    );
  }
}

class SampleStringFormat extends StatelessWidget {
  const SampleStringFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            'String',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toCurrency()',
          child:
              Text('123456789'.toCurrency(), style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toBirthday()',
          child:
              Text('19921001'.toBirthday(), style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toPrice()',
          child: Text(''.toPrice(), style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toPrice()',
          child: Text('50000'.toPrice(), style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toPrice()',
          child: Text(''.toPrice2(), style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toPrice2()',
          child: Text('24500'.toPrice2(), style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'toPhoneNumber()',
          child: Text('01042145561'.toPhoneNumber(),
              style: AppTextStyle.black_16_w400),
        ),
      ],
    );
  }
}

class SampleNumFormat extends StatelessWidget {
  const SampleNumFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            'Num',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'bytesToString()',
            child: Text(124455.bytesToString(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'toCurrency()',
            child: Text(45000.toCurrency(), style: AppTextStyle.black_16_w400)),
      ],
    );
  }
}

class SampleDateTimeFormat extends StatelessWidget {
  const SampleDateTimeFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            'DateTime',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toFullDateTimeString()',
            child: Text(DateTime.now().toFullDateTimeString(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toFullDateTimeString2()',
            child: Text(DateTime.now().toFullDateTimeString2(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toFullDateTimeString3()',
            child: Text(DateTime.now().toFullDateTimeString3(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toFullDateTimeString4()',
            child: Text(DateTime.now().toFullDateTimeString4(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
          message: 'DateTime.now().toFullDateString1()',
          child: Text(DateTime.now().toFullDateString1(),
              style: AppTextStyle.black_16_w400),
        ),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toFullDateString2()',
            child: Text(DateTime.now().toFullDateString2(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toFullDateString3()',
            child: Text(DateTime.now().toFullDateString3(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateString1()',
            child: Text(DateTime.now().toDateString1(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateString2()',
            child: Text(DateTime.now().toDateString2(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateString3()',
            child: Text(DateTime.now().toDateString3(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateYearString()',
            child: Text(DateTime.now().toDateYearString(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateYearString2()',
            child: Text(DateTime.now().toDateYearString2(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateMonthString()',
            child: Text(DateTime.now().toDateMonthString(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toDateMonthString2()',
            child: Text(DateTime.now().toDateMonthString2(),
                style: AppTextStyle.black_16_w400)),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toTimestampString1()',
            child: Text(
              DateTime.now().toTimestampString1(),
              style: AppTextStyle.black_16_w400,
            )),
        SizedBox(
          height: 10,
        ),
        Tooltip(
            message: 'DateTime.now().toTimestampString2()',
            child: Text(DateTime.now().toTimestampString2(),
                style: AppTextStyle.black_16_w400)),
      ],
    );
  }
}

class SampleLoading extends StatelessWidget {
  const SampleLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTitle.size24(
            '로딩(ShowLoading)',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            showLoading();
            await Future.delayed(Duration(seconds: 2));
            hideLoading();
          },
          child: Text('로딩(2초)'),
        ),
      ],
    );
  }
}

class SampleUsefulWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SeparatedColumn(
        children: [
          CustomTitle.size30('UsefulWidget'),
          SampleSeparatedColumn(),
          SampleSeparatedRow(),
          SampleIgnorePadding(),
          SampleKeepAlive(),
        ],
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

class SampleUtility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SeparatedColumn(
        children: [
          CustomTitle.size30('Utility'),
          SampleLoading(),
        ],
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

class SampleExtension extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SeparatedColumn(
        children: [
          CustomTitle.size30('Extension'),
          SampleStringFormat(),
          SampleNumFormat(),
          SampleDateTimeFormat(),
          SampleDateTimeFormat(),
        ],
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

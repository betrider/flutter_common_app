import 'package:flutter_common_app/index.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart';

void initOnComplete(DateTime dateTime) {}
void initOnChanged(DateTime dateTime) {}

// ignore: must_be_immutable
class CustomCalendar extends StatelessWidget {
  CustomCalendar.singleWeek(
      {this.selectableDates,
      this.selectDates,
      this.onSingleComplete,
      this.onSingleChanged = initOnChanged,
      this.showIcon = true,
      this.targetDateTime})
      : _widget = DUSingleWeekCalendar(
          selectableDates: selectableDates ?? const [],
          selectDates: selectDates ?? const [],
          onComplete: onSingleComplete,
          onChanged: onSingleChanged,
          maxCount: 1,
          showIcon: showIcon,
          targetDateTime: targetDateTime ?? DateTime.now(),
        ),
        isScrollable = true,
        showWeekDays = true,
        showOnlyCurrentMonthDate = false;

  CustomCalendar.singleMonth({
    this.selectableDates,
    this.selectDates,
    this.onSingleComplete,
    this.onSingleChanged = initOnChanged,
    this.showIcon = true,
    this.targetDateTime,
    this.isScrollable = true,
    this.showWeekDays = true,
    this.showOnlyCurrentMonthDate = false,
  }) : _widget = DUSingleMonthCalendar(
          selectableDates: selectableDates ?? const [],
          selectDates: selectDates ?? const [],
          onComplete: onSingleComplete,
          onChanged: onSingleChanged,
          maxCount: 1,
          showIcon: showIcon,
          showWeekDays: showWeekDays,
          targetDateTime: targetDateTime ?? DateTime.now(),
          isScrollable: isScrollable,
          showOnlyCurrentMonthDate: showOnlyCurrentMonthDate,
        );

  CustomCalendar.multipleMonth({
    this.selectableDates,
    this.selectDates,
    required this.onMultipleComplete,
    this.maxCount,
    this.showIcon = true,
    this.targetDateTime,
    this.isScrollable = true,
    this.showOnlyCurrentMonthDate = false,
    this.showWeekDays = true,
  }) : _widget = DUMultiMonthCalendar(
          selectableDates: selectableDates ?? const [],
          selectDates: selectDates ?? const [],
          onComplete: onMultipleComplete,
          maxCount: maxCount ?? 5,
          showIcon: showIcon,
          showWeekDays: showWeekDays,
          targetDateTime: targetDateTime ?? DateTime.now(),
          showOnlyCurrentMonthDate: showOnlyCurrentMonthDate,
        );

  /// 선택가능한 날짜 리스트
  late List<DateTime>? selectableDates;

  /// 선택한 날짜 리스트
  late List<DateTime>? selectDates;

  /// 선택완료 시 이벤트(단일)
  late void Function(DateTime dateTime)? onSingleComplete;

  /// 선택완료 시 이벤트(멀티)
  late void Function(List<DateTime> dateTime) onMultipleComplete;

  /// 선택 변경이벤트(단일)
  late void Function(DateTime dateTime) onSingleChanged;

  /// 선택날짜 최대 개수
  late int? maxCount;

  /// 아이콘 표시 여부
  late bool showIcon;

  /// 타겟 날짜
  late DateTime? targetDateTime;

  /// common widget
  late Widget _widget;

  /// 스크롤으로 월 변경 기능
  final bool isScrollable;

  /// 현재 달력 일자만 보여주기
  final bool showOnlyCurrentMonthDate;

  /// 요일 보여주기
  final bool showWeekDays;

  @override
  Widget build(BuildContext context) {
    return _widget;
  }
}

class DUSingleWeekCalendar extends StatefulWidget {
  DUSingleWeekCalendar(
      {required this.selectableDates,
      required this.onComplete,
      required this.onChanged,
      required this.maxCount,
      required this.selectDates,
      required this.showIcon,
      required this.targetDateTime});

  ///선택가능한 날짜 리스트
  final List<DateTime> selectableDates;

  ///선택완료 이벤트
  final void Function(DateTime datetime)? onComplete;

  ///선택 변경 이벤트
  final void Function(DateTime datetime) onChanged;

  ///선택날짜 최대 개수
  final int maxCount;

  /// 아이콘 표시 여부
  final bool showIcon;

  /// 타겟 날짜
  final DateTime targetDateTime;

  ///선택한 날짜 리스트
  final List<DateTime> selectDates;

  @override
  _DUSingleWeekCalendarState createState() => _DUSingleWeekCalendarState();
}

class _DUSingleWeekCalendarState extends State<DUSingleWeekCalendar> {
  late DateTime _targetDateTime; //타겟 날짜
  late String _currentMonth; //타겟 월
  List<DateTime> _selectDates = [];

  //선택 아이콘
  static Widget _selectIcon(String day) => Container(
      width: 40,
      height: 40,
      color: Colors.blue[100],
      alignment: Alignment.center,
      child: Text(day));

  //선택가능 아이콘
  static Widget _selectableIcon(String day) => Container(
        width: 40,
        height: 40,
        color: Color(0xFFF6F7FF),
        alignment: Alignment.center,
        child: Text(day),
      );

  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  late CalendarCarousel _calendarCarouselNoHeader;

  late double cHeight;

  @override
  void initState() {
    super.initState();

    _targetDateTime = widget.targetDateTime;
    _currentMonth = DateFormat.yMMM().format(widget.targetDateTime);

    //선택가능한 날짜
    widget.selectDates.forEach((datetime) {
      if (widget.selectableDates.contains(datetime)) {
        _selectDates.add(datetime);
      }
    });
    _selectDates = _selectDates.take(widget.maxCount).toList();

    //선택한 날짜 모두 포함(최대카운터에 한해서)
    // _selectDates.addAll(widget.selectDates.take(widget.maxCount));
  }

  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height * 0.10;

    for (int i = 0; i < _selectDates.length; i++) {
      _markedDateMap.add(
        _selectDates[i],
        Event(
          date: _selectDates[i],
          title: 'Event 5',
          icon: _selectIcon(
            _selectDates[i].day.toString(),
          ),
        ),
      );
    }

    for (int i = 0; i < widget.selectableDates.length; i++) {
      _markedDateMap.add(
        widget.selectableDates[i],
        Event(
          date: widget.selectableDates[i],
          title: 'Event 5',
          icon: _selectableIcon(
            widget.selectableDates[i].day.toString(),
          ),
        ),
      );
    }

    _calendarCarouselNoHeader = buildCalendarCarousel();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          if (widget.onComplete != null)
            Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff999999),
                    width: 0.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: TextButton(
                      child: Text(
                        '취소',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: TextButton(
                      child: Text(
                        '선택',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        return widget.onComplete!(_selectDates[0]);
                      },
                    ),
                  )
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  _currentMonth,
                  style: AppTextStyle.black_16_w400,
                )),
                if (widget.showIcon) ...[
                  IconButton(
                    icon: getIconWidget(AppIcons.svgPagePrev),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(_targetDateTime.year,
                            _targetDateTime.month, _targetDateTime.day - 7);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                  IconButton(
                    icon: getIconWidget(AppIcons.svgPageNext),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(_targetDateTime.year,
                            _targetDateTime.month, _targetDateTime.day + 7);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                ],
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: _calendarCarouselNoHeader,
          ), //
        ],
      ),
    );
  }

  CalendarCarousel<Event> buildCalendarCarousel() {
    return CalendarCarousel<Event>(
      weekFormat: true,
      onDayPressed: (date, events) {
        ///typeA 단일선택 바로바로 바뀌게
        if (widget.selectableDates.isEmpty ||
            widget.selectableDates.indexOf(date) != -1) {
          setState(() {
            _markedDateMap = EventList<Event>(
              events: {},
            );
            _selectDates.clear();
            _selectDates.add(date);
          });
        }

        return widget.onChanged(date);
      },
      locale: 'ko', //언어설정
      todayBorderColor: Colors.white, //오늘날짜 보더 색상
      todayButtonColor: Colors.white, //오늘날짜 버튼 색상
      todayTextStyle: TextStyle(color: Colors.black), //오늘날짜 텍스트 스타일
      daysHaveCircularBorder: false, //사각형
      dayPadding: 0, //날짜 패딩
      targetDateTime: _targetDateTime, //오늘날짜
      // selectedDateTime: null,
      selectedDayBorderColor: Colors.transparent,
      selectedDayButtonColor: Colors.transparent,
      selectedDayTextStyle: TextStyle(color: Colors.black),
      weekdayTextStyle: TextStyle(color: Colors.black), //일,월,화,수,목,금,토 텍스트 색상
      // nextDaysTextStyle: TextStyle(color: Colors.white), //이전달 날짜
      // prevDaysTextStyle: TextStyle(color: Colors.white), //다음달 날짜
      showHeader: false, //달력 헤더표시여부
      height: cHeight, //달력 높이
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      markedDateMoreShowTotal:
          null, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      customGridViewPhysics: NeverScrollableScrollPhysics(), //상하 스크롤 제어
      // pageScrollPhysics: NeverScrollableScrollPhysics(), //좌우로 날짜변경 스크롤 제어
    );
  }
}

class DUSingleMonthCalendar extends StatefulWidget {
  DUSingleMonthCalendar({
    required this.selectableDates,
    required this.onComplete,
    required this.onChanged,
    required this.maxCount,
    required this.selectDates,
    required this.showIcon,
    required this.targetDateTime,
    this.isScrollable = false,
    this.showOnlyCurrentMonthDate = true,
    this.showWeekDays = true,
  });

  ///선택가능한 날짜 리스트
  final List<DateTime> selectableDates;

  ///선택완료 이벤트
  final void Function(DateTime datetime)? onComplete;

  ///선택 변경 이벤트
  final void Function(DateTime datetime) onChanged;

  ///선택날짜 최대 개수
  final int maxCount;

  ///선택한 날짜 리스트
  final List<DateTime> selectDates;

  /// 아이콘 표시 여부
  final bool showIcon;

  /// 타겟 날짜
  final DateTime targetDateTime;

  /// 스크롤으로 월 변경 기능
  final bool isScrollable;

  /// 현재 달력 일자만 보여주기
  final bool showOnlyCurrentMonthDate;

  /// 요일 보여주기
  final bool showWeekDays;

  @override
  _DUSingleMonthCalendarState createState() => _DUSingleMonthCalendarState();
}

class _DUSingleMonthCalendarState extends State<DUSingleMonthCalendar> {
  late DateTime _targetDateTime; //타겟 날짜
  late String _currentMonth; //타겟 월
  List<DateTime> _selectDates = [];

  //선택 아이콘
  static Widget _selectIcon(String day) => Container(
        width: 40,
        height: 40,
        color: Colors.blue[100],
        alignment: Alignment.center,
        child: Text(day),
      );

  //선택가능 아이콘
  static Widget _selectableIcon(String day) => Container(
        width: 40,
        height: 40,
        color: Color(0xFFF6F7FF),
        alignment: Alignment.center,
        child: Text(day),
      );

  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  late CalendarCarousel _calendarCarouselNoHeader;

  late double cHeight;

  @override
  void initState() {
    super.initState();

    _targetDateTime = widget.targetDateTime;
    _currentMonth = DateFormat.yMMM().format(widget.targetDateTime);

    //선택가능한 날짜
    widget.selectDates.forEach((datetime) {
      if (widget.selectableDates.contains(datetime)) {
        _selectDates.add(datetime);
      }
    });
    _selectDates = _selectDates.take(widget.maxCount).toList();

    //선택한 날짜 모두 포함(최대카운터에 한해서)
    // _selectDates.addAll(widget.selectDates.take(widget.maxCount));
  }

  @override
  Widget build(BuildContext context) {
    cHeight = MediaQuery.of(context).size.height * 0.40;

    for (int i = 0; i < _selectDates.length; i++) {
      _markedDateMap.add(
        _selectDates[i],
        Event(
          date: _selectDates[i],
          title: 'Event 5',
          icon: _selectIcon(
            _selectDates[i].day.toString(),
          ),
        ),
      );
    }

    for (int i = 0; i < widget.selectableDates.length; i++) {
      _markedDateMap.add(
        widget.selectableDates[i],
        Event(
          date: widget.selectableDates[i],
          title: 'Event 5',
          icon: _selectableIcon(
            widget.selectableDates[i].day.toString(),
          ),
        ),
      );
    }

    _calendarCarouselNoHeader = buildCalendarCarousel();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          if (widget.onComplete != null)
            Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff999999),
                    width: 0.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: TextButton(
                      child: Text(
                        '취소',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: TextButton(
                      child: Text(
                        '선택',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        return widget.onComplete!(_selectDates[0]);
                      },
                    ),
                  )
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  _currentMonth,
                  style: AppTextStyle.black_16_w400,
                )),
                if (widget.showIcon) ...[
                  IconButton(
                    icon: getIconWidget(AppIcons.svgPagePrev),
                    onPressed: () {
                      print('전:$_targetDateTime');
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month - 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                  IconButton(
                    icon: getIconWidget(AppIcons.svgPageNext),
                    onPressed: () {
                      print('후:$_targetDateTime');
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month + 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                ],
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: _calendarCarouselNoHeader,
          ), //
        ],
      ),
    );
  }

  CalendarCarousel<Event> buildCalendarCarousel() {
    return CalendarCarousel<Event>(
      onCalendarChanged: (dateTime) {
        setState(() {
          print(dateTime);
          _targetDateTime = dateTime;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayPressed: (date, events) {
        ///typeA 단일선택 바로바로 바뀌게
        if (widget.selectableDates.isEmpty ||
            widget.selectableDates.indexOf(date) != -1) {
          setState(() {
            _markedDateMap = EventList<Event>(
              events: {},
            );
            _selectDates.clear();
            _selectDates.add(date);
          });
        }

        return widget.onChanged(date);
      },
      locale: 'ko', //언어설정
      todayBorderColor: Colors.white, //오늘날짜 보더 색상
      todayButtonColor: Colors.white, //오늘날짜 버튼 색상
      todayTextStyle: TextStyle(color: Colors.black), //오늘날짜 텍스트 스타일
      daysHaveCircularBorder: false, //사각형
      dayPadding: 0, //날짜 패딩
      targetDateTime: _targetDateTime, //오늘날짜
      selectedDateTime: null,
      selectedDayBorderColor: Colors.transparent,
      selectedDayButtonColor: Colors.transparent,
      selectedDayTextStyle: TextStyle(color: Colors.black),
      weekdayTextStyle: TextStyle(color: Colors.black),
      // nextDaysTextStyle: TextStyle(color: Colors.white), //이전달 날짜
      // prevDaysTextStyle: TextStyle(color: Colors.white), //다음달 날짜
      showHeader: false, //달력 헤더표시여부
      height: cHeight, //달력 높이
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      showWeekDays: widget.showWeekDays,
      showOnlyCurrentMonthDate:
          widget.showOnlyCurrentMonthDate, //현재 달력 일자만 보여주기 여부
      isScrollable: widget.isScrollable, //스크롤로 월 이동 기능
      markedDateMoreShowTotal:
          null, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      customGridViewPhysics: NeverScrollableScrollPhysics(), //상하 스크롤 제어
      // pageScrollPhysics: NeverScrollableScrollPhysics(), //좌우로 날짜변경 스크롤 제어
    );
  }
}

class DUMultiMonthCalendar extends StatefulWidget {
  DUMultiMonthCalendar({
    required this.selectableDates,
    required this.onComplete,
    required this.maxCount,
    required this.selectDates,
    required this.showIcon,
    required this.targetDateTime,
    this.showOnlyCurrentMonthDate = false,
    this.showWeekDays = true,
  });

  ///선택가능한 날짜 리스트
  final List<DateTime> selectableDates;

  ///선택완료 시 이벤트
  final void Function(List<DateTime> datetime) onComplete;

  ///선택날짜 최대 개수
  final int maxCount;

  ///선택한 날짜 리스트
  final List<DateTime> selectDates;

  /// 아이콘 표시 여부
  final bool showIcon;

  /// 타겟 날짜
  final DateTime targetDateTime;

  /// 현재 달력의 날짜만 보여주기
  final bool showOnlyCurrentMonthDate;

  /// 요일 보여주기
  final bool showWeekDays;

  @override
  _DUMultiMonthCalendarState createState() => _DUMultiMonthCalendarState();
}

class _DUMultiMonthCalendarState extends State<DUMultiMonthCalendar> {
  late DateTime _targetDateTime; //타겟 날짜
  late String _currentMonth; //타겟 월
  List<DateTime> _selectDates = [];

  //선택 아이콘
  static Widget _selectIcon(String day) => Container(
        width: 40,
        height: 40,
        color: Colors.blue[100],
        alignment: Alignment.center,
        child: Text(day),
      );

  //선택가능 아이콘
  static Widget _selectableIcon(String day) => Container(
        width: 40,
        height: 40,
        color: Color(0xFFF6F7FF),
        alignment: Alignment.center,
        child: Text(day),
      );

  EventList<Event> _markedDateMap = EventList<Event>(
    events: {},
  );

  late CalendarCarousel _calendarCarouselNoHeader;

  late double cHeight;

  @override
  void initState() {
    super.initState();

    _targetDateTime = widget.targetDateTime;
    _currentMonth = DateFormat.yMMM().format(widget.targetDateTime);

    //선택가능한 날짜중에서 선택한 날짜 포함(최대카운터에 한해서)
    widget.selectDates.forEach((datetime) {
      if (widget.selectableDates.contains(datetime)) {
        _selectDates.add(datetime);
      }
    });
    _selectDates = _selectDates.take(widget.maxCount).toList();

    //선택한 날짜 모두 포함(최대카운터에 한해서)
    // _selectDates.addAll(widget.selectDates.take(widget.maxCount));
  }

  @override
  Widget build(BuildContext context) {
    // print('build');
    cHeight = MediaQuery.of(context).size.height * 0.40;

    // print(widget.selectDates.length);
    for (int i = 0; i < _selectDates.length; i++) {
      _markedDateMap.add(
        _selectDates[i],
        Event(
          date: _selectDates[i],
          title: 'Event 5',
          icon: _selectIcon(
            _selectDates[i].day.toString(),
          ),
        ),
      );
    }

    // print(widget.selectableDates.length);
    for (int i = 0; i < widget.selectableDates.length; i++) {
      _markedDateMap.add(
        widget.selectableDates[i],
        Event(
          date: widget.selectableDates[i],
          title: 'Event 5',
          icon: _selectableIcon(
            widget.selectableDates[i].day.toString(),
          ),
        ),
      );
    }

    _calendarCarouselNoHeader = buildCalendarCarousel();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              border: Border(
                bottom: BorderSide(
                  color: Color(0xff999999),
                  width: 0.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: TextButton(
                    child: Text(
                      '취소',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: TextButton(
                    child: Text(
                      '선택',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      return widget.onComplete(_selectDates);
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 16.0,
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  _currentMonth,
                  style: AppTextStyle.black_16_w400,
                )),
                if (widget.showIcon) ...[
                  IconButton(
                    icon: getIconWidget(AppIcons.svgPagePrev),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month - 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                  IconButton(
                    icon: getIconWidget(AppIcons.svgPageNext),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month + 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                ],
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: _calendarCarouselNoHeader,
          ), //
        ],
      ),
    );
  }

  CalendarCarousel<Event> buildCalendarCarousel() {
    return CalendarCarousel<Event>(
      isScrollable: false,
      onCalendarChanged: (dateTime) {
        setState(() {
          _targetDateTime = dateTime;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayPressed: (date, events) {
        if (widget.selectableDates.isEmpty ||
            widget.selectableDates.indexOf(date) != -1) {
          if (_selectDates.indexOf(date) != -1) {
            setState(() {
              _markedDateMap = EventList<Event>(
                events: {},
              );
              _selectDates.remove(date);
            });
          } else {
            if (_selectDates.length > widget.maxCount - 1) return null;
            setState(() {
              _markedDateMap = EventList<Event>(
                events: {},
              );
              _selectDates.add(date);
            });
          }
        }
      },
      locale: 'ko', //언어설정
      todayBorderColor: Colors.transparent, //오늘날짜 보더 색상
      todayButtonColor: Colors.transparent, //오늘날짜 버튼 색상
      todayTextStyle: TextStyle(color: Colors.black), //오늘날짜 텍스트 스타일
      daysHaveCircularBorder: false, //사각형
      dayPadding: 0, //날짜 패딩
      targetDateTime: _targetDateTime, //오늘날짜
      // selectedDateTime: DateTime(2021, 5, 12),
      // selectedDayBorderColor: Colors.transparent,
      // selectedDayButtonColor: Color(0xFFF6F7FF),
      // selectedDayTextStyle: TextStyle(color: Colors.black),
      weekdayTextStyle: TextStyle(color: Colors.black),
      // nextDaysTextStyle: TextStyle(color: Colors.white), //이전달 날짜
      // prevDaysTextStyle: TextStyle(color: Colors.white), //다음달 날짜
      showHeader: false, //달력 헤더표시여부
      height: cHeight, //달력 높이
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      showOnlyCurrentMonthDate: widget.showOnlyCurrentMonthDate,
      markedDateMoreShowTotal:
          null, // null for not showing hidden events indicator
      showWeekDays: widget.showWeekDays,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      customGridViewPhysics: NeverScrollableScrollPhysics(), //상하 스크롤 제어
      // pageScrollPhysics: NeverScrollableScrollPhysics(), //좌우로 날짜변경 스크롤 제어
    );
  }
}

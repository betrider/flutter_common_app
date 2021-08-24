import 'package:flutter/material.dart';

class CustomScrollPhysics extends ScrollPhysics {
  final double itemDimension;

  const CustomScrollPhysics({
    required this.itemDimension,
    ScrollPhysics? parent,
  }) : super(parent: parent);

  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics(
      itemDimension: itemDimension,
      parent: buildParent(ancestor),
    );
  }

  double _getPage(ScrollMetrics position, double portion) {
    // <--
    return (position.pixels + portion) / itemDimension;
    // -->
  }

  double _getPixels(double page, double portion) {
    // <--
    return (page * itemDimension) - portion;
    // -->
  }

  double _getTargetPixels(
    ScrollMetrics position,
    Tolerance tolerance,
    double velocity,
    double portion,
  ) {
    // <--
    double page = _getPage(position, portion);
    // -->
    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }
    // <--
    return _getPixels(page.roundToDouble(), portion);
    // -->
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent))
      return super.createBallisticSimulation(position, velocity);

    final Tolerance tolerance = this.tolerance;
    //final portion = (position.extentInside - itemDimension) / 2;
    final portion = itemDimension;
    final double target =
        _getTargetPixels(position, tolerance, velocity, portion);
    if (target != position.pixels)
      return ScrollSpringSimulation(spring, position.pixels, target, velocity,
          tolerance: tolerance);
    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}

// class MyHomePage extends StatelessWidget {
//   final List<int> pages = List.generate(4, (index) => index);

//   ItemScrollController _scrollController = ItemScrollController();

//   List<Color> listColor = [Colors.red, Colors.blue, Colors.green, Colors.yellow];

//   @override
//   Widget build(BuildContext context) {
//     print(duWindowWidth);
//     return Scaffold(
//       body: SafeArea(
//         child: ScrollablePositionedList.builder(
//           itemScrollController: _scrollController,
//           scrollDirection: Axis.horizontal,
//           physics: CustomScrollPhysics(itemDimension: 205),
//           itemCount: pages.length,
//           itemBuilder: (context, index) => Container(
//             height: double.infinity,
//             width: 205,
//             color: listColor[index],
//             child: Center(child: ElevatedButton(
//               child: Text('next'),
//               onPressed: () {
//                 _scrollController.scrollTo(index: index + 1, duration: Duration(milliseconds: 250));
//               },
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter_common_app/index.dart';

class Bike {
  final String name;
  final int horsepower;

  const Bike({
    required this.name,
    required this.horsepower,
  });
}

final cars = [
  'Ferrari',
  'Lamborghini',
  'BMW',
  'Mercedes',
  'Toyota Supra',
  'Aston Martin'
];


List<Bike> bikes = [
  Bike(name: 'Kawasaki', horsepower: 310),
  Bike(name: 'Honda', horsepower: 210),
  Bike(name: 'Suzuki', horsepower: 250),
  Bike(name: 'BMW', horsepower: 400),
  Bike(name: 'Harley Davidson', horsepower: 350),
  Bike(name: 'Yamaha', horsepower: 450),
  Bike(name: 'Hayabusa', horsepower: 500),
];


class TestListUtil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarWidget(
        title: 'Utility Methods',
        tabs: [
          Tab(icon: Icon(Icons.color_lens), text: 'For Each'),
          Tab(icon: Icon(Icons.map), text: 'Map'),
          Tab(icon: Icon(Icons.space_bar), text: 'Contains'),
          Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sort'),
          Tab(icon: Icon(Icons.reduce_capacity), text: 'Reduce'),
          Tab(icon: Icon(Icons.reduce_capacity), text: 'Fold'),
          Tab(icon: Icon(Icons.all_inclusive), text: 'Every'),
          Tab(icon: Icon(Icons.question_answer_outlined), text: 'Where'),
          Tab(icon: Icon(Icons.skip_next), text: 'Take & Skip'),
          Tab(icon: Icon(Icons.copy), text: 'From'),
          Tab(icon: Icon(Icons.expand), text: 'Expand'),
        ],
        children: [
          ForEachPage(),
          MapPage(),
          ContainsPage(),
          SortPage(),
          ReducePage(),
          FoldPage(),
          EveryPage(),
          WherePage(),
          TakeSkipPage(),
          FromPage(),
          ExpandPage(),
        ],
      );
  }
}

class TabBarWidget extends StatelessWidget {
  final String title;
  final List<Tab> tabs;
  final List<Widget> children;

  const TabBarWidget({
    Key? key,
    required this.title,
    required this.tabs,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: tabs,
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(children: children),
        ),
      );
}

class ValueWidget extends StatelessWidget {
  final String title;
  final String value;

  const ValueWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      );
}

class ValuesWidget extends StatelessWidget {
  final String title;
  final List<String> values;

  const ValuesWidget({
    Key? key,
    required this.title,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          ...values
              .map((value) => Text(value, style: TextStyle(fontSize: 20)))
              .toList(),
        ],
      );
}

class ContainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hasLamborghini = cars.contains('Lamborghini');

    return Center(
      child: hasLamborghini
          ? ValueWidget(title: 'Best Sports Car', value: 'Lamborghini')
          : ValueWidget(title: 'Best Sports Car', value: 'None'),
    );
  }
}

class EveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isHighHorsepower = bikes.every((bike) => bike.horsepower >= 200);

    return Center(
      child: ValueWidget(
        title: 'All High Horsepower?',
        value: isHighHorsepower.toString(),
      ),
    );
  }
}

class ExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bikesMoreHorsepower = bikes
        .expand((bike) => [bike.horsepower, bike.horsepower + 100])
        .toList();

    return Center(
      child: ValueWidget(
        title: 'Expanded List',
        value: bikesMoreHorsepower.join(', '),
      ),
    );
  }
}

class FoldPage extends StatefulWidget {
  @override
  _FoldPageState createState() => _FoldPageState();
}

class _FoldPageState extends State<FoldPage> {
  @override
  Widget build(BuildContext context) {
    final initialValue = 0;
    final totalHorsePower = bikes.fold<int>(
      initialValue,
      (previous, value) => previous + value.horsepower,
    );

    return Center(
      child: ValueWidget(
        title: 'Total Horsepower',
        value: '$totalHorsePower',
      ),
    );
  }
}

class ForEachPage extends StatefulWidget {
  @override
  _ForEachPageState createState() => _ForEachPageState();
}

class _ForEachPageState extends State<ForEachPage> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            child: Text('Call ForEach'),
            onPressed: () => cars.forEach((car) => print(car)),
          ),
        ),
      );
}

class FromPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carsCopied = List<String>.from(cars);
    final isSame = carsCopied == cars;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValueWidget(
            title: 'Cars', value: '$cars \n Hashcode: ${cars.hashCode}'),
        const SizedBox(height: 32),
        ValueWidget(
          title: 'Cars Copied',
          value: '$carsCopied \n Hashcode: ${carsCopied.hashCode}',
        ),
        const SizedBox(height: 32),
        ValueWidget(title: 'Cars == Cars Copied', value: '$isSame'),
      ],
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final allHorsepower = bikes.map((bike) {
      final horsepower = bike.horsepower.toString();

      return Text(
        horsepower,
        style: TextStyle(fontSize: 20, color: Colors.red),
      );
    }).toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'All Bike\'s Horsepower',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        ...allHorsepower,
      ],
    );
  }
}

class ReducePage extends StatefulWidget {
  @override
  _ReducePageState createState() => _ReducePageState();
}

class _ReducePageState extends State<ReducePage> {
  @override
  Widget build(BuildContext context) {
    final joinedCars = cars.reduce((value, element) => '$value & $element');

    return Center(child: ValueWidget(title: 'Joined Cars', value: joinedCars));
  }
}

class SortPage extends StatefulWidget {
  @override
  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    final sortedCars = cars..sort((a, b) => a.compareTo(b));

    return Center(
      child: ValuesWidget(title: 'Sorted Cars', values: sortedCars),
    );
  }
}

class TakeSkipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bikesStarting = bikes.take(2);
    final bikesAfter = bikes.skip(2);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValuesWidget(
          title: 'All',
          values: bikes.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValuesWidget(
          title: 'Take 2',
          values: bikesStarting.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValuesWidget(
          title: 'Skip 2',
          values: bikesAfter.map((bike) => bike.name).toList(),
        ),
      ],
    );
  }
}

class WherePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bikesShortNamed = bikes.where((bike) => bike.name.length <= 5);
    final bikesStartsH = bikes.where((bike) => bike.name.startsWith('H'));
    final bikeMaxHP = bikes.singleWhere((bike) => bike.horsepower > 450);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ValuesWidget(
          title: 'Bikes With H',
          values: bikesStartsH.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValuesWidget(
          title: 'Bikes Short Names',
          values: bikesShortNamed.map((bike) => bike.name).toList(),
        ),
        const SizedBox(height: 24),
        ValueWidget(title: 'Best Bike', value: bikeMaxHP.name),
      ],
    );
  }
}

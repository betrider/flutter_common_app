import 'package:flutter_common_app/index.dart';

class SampleGetX extends StatelessWidget {
  const SampleGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //2.controller 사용방법
    // final controller = Get.put(BuilderController());
    Get.put(BuilderController());

    //3.reactive 사용방법 두번째방법
    // final controller2 = Get.put(ReactiveController());

    return Column(
      children: [
        // //1.init에서 사용하는방법
        // GetBuilder<BuilderController>(
        //   init: BuilderController(),
        //   builder: (controller) {
        //     return Text('count : ${controller.count}');
        //   },
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     Get.find<BuilderController>().increment();
        //   },
        //   child: Text('Count 업!'),
        // ),

        //2.controller 사용방법
        GetBuilder<BuilderController>(
          builder: (controller) {
            return Text('count : ${controller.count}');
          },
        ),
        ElevatedButton(
          onPressed: () {
            Get.find<BuilderController>().increment();
          },
          child: Text('Count 업!'),
        ),
        // GetBuilder<BuilderController>(
        //   builder: (controller) {
        //     return Text('User : ${controller.user.id} / ${controller.user.name}');
        //   },
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     controller.change(id: 2, name: '베라베라');
        //   },
        //   child: Text('User change'),
        // ),

        /* //3.reactive 사용방법 첫번째방법
        GetX<ReactiveController>(
          init: ReactiveController(),
          builder: (controller) {
            return Text(
                'count : ${controller.count1.value}'); //리스트가 아닌경우 .value 사용
          },
        ),
        ElevatedButton(
          onPressed: () {
            Get.find<ReactiveController>().count1++;
          },
          child: Text('Count 업!'),
        ),

        //3.reactive 사용방법 두번째방법
        GetX<ReactiveController>(
          builder: (controller) {
            print('count 1 build');
            return Text(
                'count : ${controller.count1.value}'); //.value RxInt -> Int
          },
        ),
        Obx(() {
          print('count 1 build');
          return Text('Count 2 : ${controller2.count2.value}');
        }),
        Obx(() {
          print('sum build');
          return Text('Count 2 : ${controller2.sum}');
        }),
        Obx(() {
          return Text(
              'User : ${controller2.user.value.id} / ${controller2.user.value.name}');
        }),
        Obx(() {
          return Text('User : ${controller2.testList}');
        }),
        ElevatedButton(
          onPressed: () {
            controller2.count1++;
          },
          child: Text('Count1 업!'),
        ),
        ElevatedButton(
          onPressed: () {
            controller2.count2++;
          },
          child: Text('Count2 업!'),
        ),
        ElevatedButton(
          onPressed: () {
            controller2.change(id: 2, name: '베라베라');
          },
          child: Text('User change'),
        ),
        ElevatedButton(
          onPressed: () {
            controller2.testList = ['1', '2', '3'];
          },
          child: Text('List change'),
        ), */
      ],
    );
  }
}

class User {
  User({required this.id, required this.name});

  int id;
  String name;
}

class BuilderController extends GetxController {
  int count = 0;

  increment() {
    count++;
    update();
  }

  var user = User(
    id: 1,
    name: '베트라이더',
  );

  change({required int id, required String name}) {
    user.id = id;
    user.name = name;

    update();
  }
}

class ReactiveController extends GetxController {
  RxInt count1 = 0.obs;
  var count2 = 0.obs;

  var user = User(
    id: 1,
    name: '베트라이더',
  ).obs;

  List testList = ['1', '2', '3', '4', '5'].obs;

  get sum => count1.value + count2.value;

  change({required int id, required String name}) {
    user.update((val) {
      val!.id = id;
      val.name = name;
    });
  }

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    super.onInit();

    //변경될때마다
    ever(count1, (_) {
      print('ever : count1 변경');
    });

    //최초 한번만
    once(count1, (_) {
      print('once : 처음으로 count1 변경');
    });

    //반복변경이 이루어질때 끝난 후 실행
    debounce(
      count1,
      (_) {
        print('debounce : 1초간 디바운스 한 뒤에 실행');
      },
      time: Duration(seconds: 1),
    );

    //반복변경이 이루어질때 주기적으로 실행
    interval(
      count1,
      (_) {
        print('interval : 1초간 인터벌이 지나면 실행');
      },
      time: Duration(seconds: 1),
    );
  }

  @override
  void onReady() { // called after the widget is rendered on screen
    // showIntroDialog();
    super.onReady();
  }

  @override
  void onClose() { // called just before the Controller is deleted from memory
    // closeStream();
    super.onClose();
  }

}

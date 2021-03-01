import 'package:flutter_common_app/app.dart';
import 'package:flutter_common_app/utilities/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeModel>(
          create: (BuildContext context) => ThemeModel(),
        ),
      ],
      child: App()
    ),
  );
}
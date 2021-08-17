import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'GraphQL Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(
              title: const Text('GraphQL Demo App'),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<GraphQLWidgetScreen>(
                          builder: (BuildContext context) =>
                              GraphQLBlocPatternScreen(),
                        ),
                      );
                    },
                    child: const Text('GraphQL BloC pattern'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<GraphQLWidgetScreen>(
                          builder: (BuildContext context) =>
                              const GraphQLWidgetScreen(),
                        ),
                      );
                    },
                    child: const Text('GraphQL Widget'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<FetchMoreWidgetScreen>(
                          builder: (BuildContext context) =>
                             FetchMoreWidgetScreen(),
                        ),
                      );
                    },
                    child: const Text('Fetchmore (Pagination) Example'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

class FetchMoreWidgetScreen extends StatelessWidget {
  const FetchMoreWidgetScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class GraphQLBlocPatternScreen extends StatelessWidget {
  const GraphQLBlocPatternScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class GraphQLWidgetScreen extends StatelessWidget {
  const GraphQLWidgetScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testpro/main_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (_) => MainModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<MainModel>(
                builder: (context, model, child) {
                  return Text(
                    '${model.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
              ),
            ],
          ),
        ),
        floatingActionButton: Consumer<MainModel>(
            builder: (context, model, child) {
            return FloatingActionButton(
              onPressed: (){
                model.incrementCounter();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            );
          }
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

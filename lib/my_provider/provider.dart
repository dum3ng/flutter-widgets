import 'package:flutter/material.dart';

typedef ProviderBuilder = Widget Function(BuildContext context);

class Provider extends InheritedWidget {
  final Model model;
  final Map<BuildContext, bool> _cache = {};
  Provider({
    super.key,
    required super.child,
    required this.model,
  });

  static Provider of(BuildContext ctx) {
    var provider = ctx.dependOnInheritedWidgetOfExactType<Provider>()!;
    if (provider._cache[ctx] == null) {
      provider.model.addListener(() {
        (ctx.widget as Consumer).update();
      });
      provider._cache[ctx] = true;
    }
    return provider;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

/// -------------
class Consumer extends StatefulWidget {
  final ProviderBuilder builder;
  _ConsumerState? state;
  Consumer({super.key, required this.builder});

  void update() {
    if (state != null) {
      state!.updateState();
    }
  }

  @override
  State<Consumer> createState() {
    state = _ConsumerState();
    return state!;
  }
}

class _ConsumerState extends State<Consumer> {
  updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}

//----------
class Model extends ChangeNotifier {
  int _count = 0;

  add() {
    _count++;
    notifyListeners();
  }
}

// *
class ProviderDemo extends StatefulWidget {
  const ProviderDemo({super.key});

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  Model model = Model();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Provider(
            model: model,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer(
                    builder: (ctx) {
                      var model = Provider.of(ctx).model;
                      return Text('count:${model._count}');
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        model.add();
                      },
                      child: const Text('add')),
                ],
              ),
            )));
  }
}

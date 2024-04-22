import 'package:flutter/material.dart';

import './store/calculator_store.dart';
import 'widgets/buttons_view.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final store = CalculatorStore();

  void _listener() => setState(() {});

  @override
  void initState() {
    super.initState();
    store.addListener(_listener);
  }

  @override
  void dispose() {
    store.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.only(bottom: 16, right: 20),
                child: Text(
                  store.display,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ButtonsView(onButtonClick: store.onButtonClick),
          )
        ],
      ),
    );
  }
}

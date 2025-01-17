import 'package:zen_reader/l10n/localization_extension.dart';
import 'package:flutter/material.dart';

class StatisticsTips extends StatelessWidget {
  const StatisticsTips({super.key});

  final TextStyle textStyleBig = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  final TextStyle textStyle = const TextStyle(
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('(｡╯︵╰｡) ',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey)),
          const SizedBox(height: 50),
          Text(
            context.statisticsTips1,
            style: textStyleBig,
          ),
          const SizedBox(height: 10),
          Text(
            context.statisticsTips2,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

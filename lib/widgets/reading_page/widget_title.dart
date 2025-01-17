import 'package:zen_reader/widgets/reading_page/more_settings/more_settings.dart';
import 'package:flutter/material.dart';

Widget widgetTitle(String title, ReadingSettings? settings) {
  Widget settingsButton = settings == null
      ? const SizedBox(
          height: 48,
        )
      : SizedBox(
          height: 48,
          child: IconButton(
              onPressed: () => showMoreSettings(settings),
              icon: const Icon(Icons.settings)),
        );

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontFamily: 'SourceHanSerif',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            settingsButton,
          ],
        ),
      ),
      const Divider(),
    ],
  );
}

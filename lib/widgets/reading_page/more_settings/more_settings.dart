import 'package:zen_reader/l10n/localization_extension.dart';
import 'package:zen_reader/main.dart';
import 'package:zen_reader/widgets/reading_page/more_settings/font_settings.dart';
import 'package:zen_reader/widgets/reading_page/more_settings/theme_settings.dart';
// import 'package:contentsize_tabbarview/contentsize_tabbarview.dart';
import 'package:flutter/material.dart';

enum ReadingSettings { theme, style }

void showMoreSettings(ReadingSettings settings) {
  BuildContext context = navigatorKey.currentContext!;
  Navigator.of(context).pop();
  TabController? tabController = TabController(
    length: 2,
    vsync: Navigator.of(context),
    initialIndex: settings == ReadingSettings.theme ? 0 : 1,
  );

  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              controller: tabController,
              tabs: [
                Tab(text: context.readingPageTheme),
                Tab(text: context.readingPageStyle),
              ],
            ),
            const Divider(height: 0),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.5,
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              // Todo:should be rebuild one day
              // child: ContentSizeTabBarView(
              //   animationDuration: const Duration(milliseconds: 600),
              //   controller: tabController,
              //   children: [
              //     themeSettings,
              //     fontSettings,
              //   ],
              // ),
            ),
          ],
        ),
      );
    },
  );
}

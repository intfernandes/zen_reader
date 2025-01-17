import 'package:zen_reader/config/shared_preference_provider.dart';
import 'package:zen_reader/l10n/localization_extension.dart';
import 'package:zen_reader/main.dart';
import 'package:zen_reader/utils/app_version.dart';
import 'package:zen_reader/utils/log/common.dart';
import 'package:zen_reader/utils/toast/common.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> checkUpdate(bool manualCheck) async {
  // if is today
  if (!manualCheck &&
      DateTime.now().difference(Prefs().lastShowUpdate) <
          const Duration(days: 1)) {
    return;
  }
  Prefs().lastShowUpdate = DateTime.now();

  BuildContext context = navigatorKey.currentContext!;
  Response response;
  try {
    response = await Dio()
        .get('https://api.github.com/repos/Anxcye/anx-reader/releases/latest');
  } catch (e) {
    if (manualCheck) {
      AnxToast.show(context.commonFailed);
    }
    throw Exception('Update: Failed to check for updates $e');
  }
  String newVersion = response.data['tag_name'].toString().substring(1);
  String currentVersion =
      (await getAppVersion()).substring(0, newVersion.length);
  AnxLog.info('Update: new version $newVersion');
  if (newVersion != currentVersion) {
    if (manualCheck) {
      Navigator.of(context).pop();
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(context.commonNewVersion,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(context.updateNewVersion + newVersion,
                  style: const TextStyle(
                    fontSize: 20,
                  )),
              Text(context.updateCurrentVersion + currentVersion),
              const Divider(),
              Text(response.data['body'].toString()),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(context.commonCancel),
            ),
            TextButton(
              onPressed: () {
                launchUrl(
                    Uri.parse(
                        'https://github.com/Anxcye/anx-reader/releases/latest'),
                    mode: LaunchMode.externalApplication);
              },
              child: Text(context.commonUpdate),
            ),
          ],
        );
      },
    );
  } else {
    if (manualCheck) {
      AnxToast.show(context.commonNoNewVersion);
    }
  }
}

import 'package:zen_reader/l10n/localization_extension.dart';
import 'package:zen_reader/utils/theme_mode_to_string.dart';
import 'package:flutter/material.dart';

import 'package:zen_reader/config/shared_preference_provider.dart';

class ChangeThemeMode extends StatefulWidget {
  const ChangeThemeMode({super.key});

  @override
  _ChangeThemeModeState createState() => _ChangeThemeModeState();
}

class _ChangeThemeModeState extends State<ChangeThemeMode> {
  late String _themeMode;

  @override
  void initState() {
    super.initState();
    _themeMode = themeModeToString(Prefs().themeMode);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildThemeModeButton('auto', context.settingsSystemMode),
        const SizedBox(width: 10),
        _buildThemeModeButton('dark', context.settingsDarkMode),
        const SizedBox(width: 10),
        _buildThemeModeButton('light', context.settingsLightMode),
      ],
    );
  }

  Widget _buildThemeModeButton(String mode, String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          Prefs().saveThemeModeToPrefs(mode);
          setState(() {
            _themeMode = mode;
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed) ||
                  _themeMode == mode) {
                return Theme.of(context).colorScheme.primary;
              }
              return Theme.of(context).colorScheme.surface;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed) ||
                  _themeMode == mode) {
                return Theme.of(context).colorScheme.onPrimary;
              }
              return Theme.of(context).colorScheme.onSurface;
            },
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

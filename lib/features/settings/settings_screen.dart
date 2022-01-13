import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_project/domain/providers/theme_mode_provider.dart';
import 'package:sample_project/resources/styles/text_styles.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _themeModeProvider = ref.watch(themeModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Change Theme Mode", style: TextStyles.title),
            const Divider(),
            Switch(
              value: _themeModeProvider.isLightMode,
              onChanged: (val) {
                _themeModeProvider.switchTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}

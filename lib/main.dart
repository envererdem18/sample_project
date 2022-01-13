import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_project/resources/theme/themes.dart';

import 'domain/providers/theme_mode_provider.dart';
import 'features/base/base_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _themeModeProvider = ref.watch(themeModeProvider);
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: _themeModeProvider.themeMode,
        title: 'Material App',
        //themeMode: ThemeMode.dark,
        home: BaseScreen(),
      ),
    );
  }
}

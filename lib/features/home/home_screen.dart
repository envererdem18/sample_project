import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_project/features/home/home_screen_provider.dart';
import 'package:sample_project/resources/theme/color_palette.dart';

import 'widgets/article_card.dart';

part './widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenViewModel(),
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(),
        floatingActionButton: _buildFAB(),
      ),
    );
  }
}

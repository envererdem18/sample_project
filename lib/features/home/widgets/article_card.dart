import 'package:flutter/material.dart';
import 'package:sample_project/data/models/article_model.dart';
import 'package:sample_project/resources/styles/box_decoratons.dart';
import 'package:sample_project/resources/styles/text_styles.dart';
import 'package:sample_project/resources/theme/color_palette.dart';
import 'package:sample_project/resources/widgets/sizes/margin.dart';
import 'package:sample_project/resources/widgets/sizes/padding.dart';

class ArticleCard extends Card {
  ArticleCard({Key? key, required Article article})
      : super(
          key: key,
          elevation: 10,
          color: ColorPalette.secondary,
          margin: const CustomMargin(),
          child: Padding(
            padding: const CustomPadding(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${article.id}", style: TextStyles.title),
                    Text(
                      article.title,
                      style: TextStyles.title,
                    ),
                    const SizedBox(width: 14),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  article.desc,
                  style: TextStyles.subtitle,
                ),
                Container(
                  padding: const CustomPadding(),
                  margin: const CustomMargin(),
                  decoration: BoxDecorations.defaultDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(article.author.name + " " + article.author.surname),
                      Text(article.type),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
}

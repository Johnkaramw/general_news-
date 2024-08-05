import 'package:flutter/cupertino.dart';
import 'package:news_app/widget/News_Top.dart';

class newslistview extends StatelessWidget {
  const newslistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const NewsTop();
        },
      ),
    );
  }
}

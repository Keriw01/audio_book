import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/styles/colors.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:testproject/widgets/loading_indicator.dart';

class FragmentSection extends StatelessWidget {
  final BookDetail bookDetail;
  const FragmentSection({super.key, required this.bookDetail});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 5,
              height: 25,
              color: seedColor,
            ),
            const SizedBox(width: 5),
            Text(
              S.of(context).fragment,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: HtmlWidget(
            bookDetail.fragmentData!.html,
            onErrorBuilder: (context, element, error) =>
                Text('$element${S.of(context).errorOccured}$error'),
            onLoadingBuilder: (context, element, loadingProgress) =>
                const LoadingIndicator(),
            renderMode: RenderMode.column,
            textStyle: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}

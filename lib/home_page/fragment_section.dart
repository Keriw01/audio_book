import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/book_detail.dart';
import 'package:testproject/styles/colors.dart';
import 'package:intl/intl.dart';

class FragmentSection extends StatelessWidget {
  final BookDetail bookDetail;
  const FragmentSection({super.key, required this.bookDetail});

  @override
  Widget build(BuildContext context) {
    if (bookDetail.fragmentData?.html != null) {
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
            child: Text(
              Bidi.stripHtmlIfNeeded(
                bookDetail.fragmentData!.html,
              ),
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
    }

    return const SizedBox.shrink();
  }
}

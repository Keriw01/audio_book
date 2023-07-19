import 'package:flutter/material.dart';

import '../book_page.dart';

class CollectionItem extends StatelessWidget {
  final String title;
  final String href;
  final int index;
  const CollectionItem({
    super.key,
    required this.title,
    required this.href,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: GestureDetector(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                BookPage(title: title, href: href),
                          ),
                        ),
                    child: Text(
                      '$index - $title',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
              ),
              Expanded(
                child: Text(
                  '0:00',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              const Icon(
                Icons.more_horiz,
                size: 20,
                color: Color.fromARGB(255, 94, 94, 94),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromARGB(255, 220, 220, 220),
          ),
        ],
      ),
    );
  }
}

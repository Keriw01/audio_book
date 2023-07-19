import 'package:flutter/material.dart';

import 'books_list.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Wybrane", style: Theme.of(context).textTheme.headlineSmall),
        for (int i = 0; i < books.length; i++) ...[
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/${books[i].imageUrl}",
                width: 100,
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Text(
                      books[i].title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 150,
                      child: Text(
                        books[i].content,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color.fromARGB(255, 220, 220, 220),
          )
        ]
      ],
    );
  }
}

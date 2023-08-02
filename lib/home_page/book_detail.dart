import 'package:flutter/material.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/styles/colors.dart';

class BookDetail extends StatelessWidget {
  final String href;
  const BookDetail({super.key, required this.href});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).bookDetail),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Image.network(
                      'https://wolnelektury.pl/media/book/cover_api_thumb/boska-komedia_1oQe5GL.jpg',
                      width: 150,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Tytul",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Autor",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 2.5),
                    Text(
                      "Gatunki",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 5,
                    height: 25,
                    color: seedColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Fragment",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up),
                  label: const Text('0'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

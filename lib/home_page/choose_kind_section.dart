import 'package:flutter/material.dart';

class ChooseKind extends StatelessWidget {
  const ChooseKind({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wybierz co chcesz",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        for (int i = 0; i < 10; i++) ...[
                          i != 0
                              ? const SizedBox(
                                  width: 10,
                                )
                              : const SizedBox(
                                  width: 0,
                                ),
                          OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                side: const BorderSide(color: Colors.orange),
                              ),
                              child: Text("Button $i")),
                        ],
                      ],
                    ),
                    Row(
                      children: [
                        for (int i = 10; i < 20; i++) ...[
                          i != 10
                              ? const SizedBox(width: 10)
                              : const SizedBox(
                                  width: 0,
                                ),
                          OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                side: const BorderSide(color: Colors.orange),
                              ),
                              child: Text("Button $i")),
                        ],
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}

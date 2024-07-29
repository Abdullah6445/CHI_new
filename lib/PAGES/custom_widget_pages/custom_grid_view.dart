import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .4,
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 16,
        // shrinkWrap: true,
        childAspectRatio: (2),

        children: [
          CardWidget(
            value: 0,
          ),
          CardWidget(
            value: 1,
          ),
          CardWidget(
            value: 2,
          ),
          CardWidget(
            value: 3,
          ),
          CardWidget(
            value: 4,
          ),
          CardWidget(
            value: 5,
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  List<String> data = [
    "Rap Caviar",
    "Mr. Morale & The Big Stepper",
    "Top Songs - Global",
    "Renaissanace",
    "Most Necessary",
    "Never Sleep"
  ];
  int value;

  CardWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: double.infinity,
            width: 50,
            color: Colors.red,
            child: const Text(""),
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              data[value],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

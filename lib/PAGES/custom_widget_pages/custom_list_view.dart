import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
          height: MediaQuery.sizeOf(context).height * .22,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomListViewBuilderItem(value: index);
            },
            itemCount: 6,
          )),
    );
  }
}

class CustomListViewBuilderItem extends StatelessWidget {
  CustomListViewBuilderItem({super.key, required this.value});

  int value;

  List<String> data = [
    "Rap Caviar",
    "Mr. Morale & The Big Stepper",
    "Top Songs - Global",
    "Renaissanace",
    "Most Necessary",
    "Never Sleep"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .17,
          width: MediaQuery.sizeOf(context).width * .3,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.grey.shade900,
            child: Text(""),
          ),
        ),
        SizedBox(
          // height: MediaQuery.sizeOf(context).height * .17,
          width: MediaQuery.sizeOf(context).width * .3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              data[value].toString(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

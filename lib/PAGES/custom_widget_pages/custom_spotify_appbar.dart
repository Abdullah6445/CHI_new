import 'package:flutter/material.dart';

class CustomSpotifyAppbar extends StatelessWidget {
  const CustomSpotifyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height * .15,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 24, 65, 27), Colors.black],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.7, 0.0),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListTile(
            title: const Text("Good Afternoon",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18)),
            trailing: SizedBox(
                width: MediaQuery.sizeOf(context).width * .5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                    ),
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.white,
                    ),
                    const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade700),
                        onPressed: () {},
                        child: const Text(
                          "Edit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )),
          ),
        ));
  }
}

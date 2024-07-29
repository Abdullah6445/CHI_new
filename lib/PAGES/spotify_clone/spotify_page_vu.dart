import 'package:flutter/material.dart';
import 'package:learning_with_chi/PAGES/custom_widget_pages/custom_grid_view.dart';
import 'package:learning_with_chi/PAGES/custom_widget_pages/custom_list_view.dart';
import 'package:learning_with_chi/PAGES/custom_widget_pages/custom_row_buttons.dart';
import 'package:learning_with_chi/PAGES/custom_widget_pages/custom_spotify_appbar.dart';
import 'package:learning_with_chi/PAGES/spotify_clone/spotify_page_vm.dart';
import 'package:stacked/stacked.dart';

class SpotifyVU extends StackedView<SpotifyVM> {
  @override
  Widget builder(BuildContext context, SpotifyVM viewModel, Widget? child) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.sizeOf(context).height * .15,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 24, 65, 27), Colors.black],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.7, 0.0),
                  ),
                ),
                child: const CustomSpotifyAppbar()),

            // Expanded(
            //   child: Container(
            //     // color: Colors.amber,
            //     color: const Color.fromARGB(237, 0, 0, 0),
            //     child: const Column(
            //       // mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         // CustomRowButtons(),
            //         // CustomGridView(),
            //         // Padding(
            //         //   padding:
            //         //       EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            //         //   child: Text(
            //         //     "Continue Listening",
            //         //     style: TextStyle(
            //         //         color: Colors.white,
            //         //         fontWeight: FontWeight.w900,
            //         //         fontSize: 18),
            //         //   ),
            //         // ),
            //         // CustomListView(),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  @override
  SpotifyVM viewModelBuilder(BuildContext context) {
    return SpotifyVM();
  }
}

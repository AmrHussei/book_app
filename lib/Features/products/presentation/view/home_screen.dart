import 'package:bookly/Features/products/presentation/view/widgets/Home_widgets/book_slider.dart';
import 'package:bookly/Features/products/presentation/view/widgets/Home_widgets/custom_app_bar.dart';
import 'package:bookly/Features/products/presentation/view/widgets/Home_widgets/remainder_home.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookSlider(),
          RemainderHome(),
        ],
      ),
    );
  }
}

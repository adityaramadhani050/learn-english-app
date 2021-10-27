import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_english_app/models/lessons_model.dart';
import 'package:learn_english_app/models/product.dart';
import 'package:learn_english_app/widgets/categories.dart';
import 'package:learn_english_app/widgets/lessons.dart';
import 'package:learn_english_app/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = ['Brainstorm', 'Books', 'Videos', 'Audio'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Choose what',
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    'to learn today?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 58,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Categories(
                      text: categories[index],
                      index: index,
                      selectedIndex: _selectedIndex,
                    ),
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lessonData.length,
                  itemBuilder: (_, index) => Lessons(data: lessonData[index]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Recommended',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: recommended.length,
                  itemBuilder: (_, index) =>
                      ProductCard(product: recommended[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

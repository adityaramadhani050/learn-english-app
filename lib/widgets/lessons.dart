import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_english_app/constant.dart';
import 'package:learn_english_app/models/lessons_model.dart';

class Lessons extends StatelessWidget {
  const Lessons({
    Key? key,
    required this.data,
  }) : super(key: key);

  final LessonsModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: double.infinity,
      margin: const EdgeInsets.only(right: 10),
      // color: Colors.grey,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(right: 25),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: data.color,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: Text(
                    data.description,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 95,
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Start',
                        style: TextStyle(color: data.color),
                      ),
                      Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: const [
              Spacer(),
              SizedBox(
                height: double.infinity,
                width: 180,
                child: Image(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage('assets/images/boy-listening-music.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

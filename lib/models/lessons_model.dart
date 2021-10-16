import 'package:flutter/material.dart';
import 'package:learn_english_app/constant.dart';

class LessonsModel {
  final String name;
  final String description;
  final Color color;

  LessonsModel(
      {required this.name, required this.description, this.color = purple});
}

List<LessonsModel> lessonData = [
  LessonsModel(
      name: 'Vocabulary', description: 'Memorize 20 new words', color: purple),
  LessonsModel(
      name: 'Writing', description: 'Writing 20 new words', color: red),
  LessonsModel(
      name: 'Reading', description: 'Reading 20 new words', color: orange),
  LessonsModel(
      name: 'Listening', description: 'Listening 20 new words', color: purple),
];

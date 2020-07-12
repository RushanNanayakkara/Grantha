import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PickInterestService {
  static List<Color> colors = [
    Colors.blue,
    Colors.teal,
    Colors.purple,
    Colors.blueGrey,
  ];

  static List<String> items = [
    "Science Fiction",
    "Historical Fiction",
    "Realistic Fiction",
    "Fan fiction",
    "Crime",
    "Mystery",
    "Suspense/ Thriller",
    "Horror",
    "Humor",
    "Classic",
    "Satire",
    "Comic/ Graphic",
    "Magical Realism",
    "Romance",
    "Drama",
    "Anthology",
    "Fable",
    "Fairytale",
    "Short Story",
    "Legend",
    "Mythology",
    "Action and Adventure",
    "Narrative Non Fiction",
    "Biography",
    "Periodicals",
    "Self-Help Book",
    "Reference Book",
    "Textbook",
    "Speech",
    "Essay",
    "Memoir",
    "Poetry",
  ]; //TODO:: Add items

  static List<String> displayedItems = [];
  static List<String> selectedItems = [];

  static int _seed = 123;
  static Random _random = Random(_seed);

  static String getItem() {
    int itemCount = PickInterestService.items.length;
    if (itemCount <= 0) return "";
    String item = items[_random.nextInt(itemCount)];
    items.remove(item);
    displayedItems.add(item);
    return item;
  }

  static Color getColor() {
    int colorCount = PickInterestService.colors.length;
    return colors[_random.nextInt(colorCount)];
  }

  static void selectItem(String item) {
    if (displayedItems.contains(item)) {
      displayedItems.remove(item);
      selectedItems.add(item);
    }
  }

  static void reset() {
    items = [
      "Science Fiction",
      "Historical Fiction",
      "Realistic Fiction",
      "Fan fiction",
      "Crime",
      "Mystery",
      "Suspense/ Thriller",
      "Horror",
      "Humor",
      "Classic",
      "Satire",
      "Comic/ Graphic",
      "Magical Realism",
      "Romance",
      "Drama",
      "Anthology",
      "Fable",
      "Fairytale",
      "Short Story",
      "Legend",
      "Mythology",
      "Action and Adventure",
      "Narrative Non Fiction",
      "Biography",
      "Periodicals",
      "Self-Help Book",
      "Reference Book",
      "Textbook",
      "Speech",
      "Essay",
      "Memoir",
      "Poetry",
    ];
    selectedItems = [];
    displayedItems = [];
  }
}

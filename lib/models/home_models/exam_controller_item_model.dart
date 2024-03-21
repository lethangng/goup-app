// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ExamContainerItemModel {
  String image;
  String title;
  String time;
  String name;
  int countHeart;
  int countEye;
  int countCoin;

  ExamContainerItemModel({
    required this.image,
    required this.title,
    required this.time,
    required this.name,
    required this.countHeart,
    required this.countEye,
    required this.countCoin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'time': time,
      'name': name,
      'countHeart': countHeart,
      'countEye': countEye,
      'countCoin': countCoin,
    };
  }

  factory ExamContainerItemModel.fromMap(Map<String, dynamic> map) {
    return ExamContainerItemModel(
      image: map['image'] as String,
      title: map['title'] as String,
      time: map['time'] as String,
      name: map['name'] as String,
      countHeart: map['countHeart'] as int,
      countEye: map['countEye'] as int,
      countCoin: map['countCoin'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExamContainerItemModel.fromJson(String source) =>
      ExamContainerItemModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}

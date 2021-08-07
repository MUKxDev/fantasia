import 'dart:convert';

class Rule {
  final String text;
  final int points;

  Rule({
    required this.text,
    required this.points,
  });

  Rule copyWith({
    String? text,
    int? points,
  }) {
    return Rule(
      text: text ?? this.text,
      points: points ?? this.points,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'points': points,
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      text: map['text'],
      points: map['points'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Rule.fromJson(String source) => Rule.fromMap(json.decode(source));

  @override
  String toString() => 'Rule(text: $text, points: $points)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Rule && other.text == text && other.points == points;
  }

  @override
  int get hashCode => text.hashCode ^ points.hashCode;
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Employee {
  final String name;
  final String image;
  final String description;
  final double rating;
  final String position;
  Employee({
    required this.name,
    required this.image,
    required this.description,
    required this.rating,
    required this.position,
  });

  Employee copyWith({
    String? name,
    String? image,
    String? description,
    double? rating,
    String? position,
  }) {
    return Employee(
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      position: position ?? this.position,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'description': description,
      'rating': rating,
      'position': position,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      name: map['name'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
      rating: map['rating'] as double,
      position: map['position'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Employee.fromJson(String source) => Employee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Employee(name: $name, image: $image, description: $description, rating: $rating, position: $position)';
  }

  @override
  bool operator ==(covariant Employee other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.image == image &&
      other.description == description &&
      other.rating == rating &&
      other.position == position;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      image.hashCode ^
      description.hashCode ^
      rating.hashCode ^
      position.hashCode;
  }
}

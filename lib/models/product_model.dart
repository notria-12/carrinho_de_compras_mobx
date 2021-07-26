import 'dart:convert';

class Product {
  String imagePath;
  String description;
  double value;
  String qtdDescription;

  Product({
    required this.imagePath,
    required this.description,
    required this.value,
    required this.qtdDescription,
  });

  Product copyWith({
    String? imagePath,
    String? description,
    double? value,
    String? qtdDescription,
  }) {
    return Product(
      imagePath: imagePath ?? this.imagePath,
      description: description ?? this.description,
      value: value ?? this.value,
      qtdDescription: qtdDescription ?? this.qtdDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imagePath': imagePath,
      'description': description,
      'value': value,
      'qtdDescription': qtdDescription,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      imagePath: map['imagePath'],
      description: map['description'],
      value: map['value'],
      qtdDescription: map['qtdDescription'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(imagePath: $imagePath, description: $description, value: $value, qtdDescription: $qtdDescription)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.imagePath == imagePath &&
        other.description == description &&
        other.value == value &&
        other.qtdDescription == qtdDescription;
  }

  @override
  int get hashCode {
    return imagePath.hashCode ^
        description.hashCode ^
        value.hashCode ^
        qtdDescription.hashCode;
  }
}

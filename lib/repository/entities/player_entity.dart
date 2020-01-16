class PlayerEntity {
  final String id;
  final String name;
  final int number;
  final String position;

  PlayerEntity(this.id, this.name, this.number, this.position);

  static PlayerEntity fromJson(Map<String, Object> json) {
    return PlayerEntity(
      json['id'] as String,
      json['name'] as String,
      json['number'] as int,
      json['position'] as String
    );
  }

  Map<String, Object> toJson() {
    return {
      'id': id,
      'name': name,
      'number': number,
      'position': position
    };
  }
}
class Exercise {
  String name;
  int sets;
  int reps;

  bool isExpanded;

  Exercise(
      {required this.name,
      required this.sets,
      required this.reps,
      required this.isExpanded});

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      name: json['name'],
      sets: json['sets'],
      reps: json['reps'],
      isExpanded: json['isExpanded'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sets': sets,
      'reps': reps,
    };
  }

  @override
  String toString() {
    return 'Exercise{name: $name, sets: $sets, reps: $reps}';
  }
}

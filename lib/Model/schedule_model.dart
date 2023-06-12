class Schedule {
  String? tournamentName;
  String? memo;

  Schedule({this.tournamentName, this.memo});

  Map<String ,dynamic> toMap() {
    return {
      'tournamentName': tournamentName,
      'memo': memo,
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'tournamentName': tournamentName,
      'memo': memo,
    };
  }
}
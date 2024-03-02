import 'dart:convert';

import 'package:isar/isar.dart';

part 'target_model.g.dart';

@Collection()
class TargetsModel {
  Id isarId = Isar.autoIncrement;
  String? targetVisit;
  String? visitDailyAchieved;
  String? visitWeeklyAchieved;
  String? visitMonthlyAchieved;
  String? targetProspect;
  String? prospectDailyAchieved;
  String? prospectWeeklyAchieved;
  String? prospectMonthlyAchieved;

  TargetsModel({
    this.targetVisit,
    this.visitDailyAchieved,
    this.visitWeeklyAchieved,
    this.visitMonthlyAchieved,
    this.targetProspect,
    this.prospectDailyAchieved,
    this.prospectWeeklyAchieved,
    this.prospectMonthlyAchieved,
  });

  factory TargetsModel.fromRawJson(String str) => TargetsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TargetsModel.fromJson(Map<String, dynamic> json) => TargetsModel(
    targetVisit: json["targets_visit"]["VisitsTarget"].toString(),
    visitDailyAchieved: json["targets_visit"]["achievement"]["day"].toString(),
    visitWeeklyAchieved: json["targets_visit"]["achievement"]["week"].toString(),
    visitMonthlyAchieved: json["targets_visit"]["achievement"]["month"].toString(),

    targetProspect: json["targets_prospects"]["ProspectsTarget"].toString(),
    prospectDailyAchieved: json["targets_prospects"]["achievement"]["day"].toString(),
    prospectWeeklyAchieved: json["targets_prospects"]["achievement"]["week"].toString(),
    prospectMonthlyAchieved: json["targets_prospects"]["achievement"]["month"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "target_visit": targetVisit,
    "visit_daily_achieved": visitDailyAchieved,
    "visit_weekly_achieved": visitWeeklyAchieved,
    "visit_monthly_achieved": visitMonthlyAchieved,
    "target_prospect": targetProspect,
    "prospect_daily_achieved": prospectDailyAchieved,
    "prospect_weekly_achieved": prospectWeeklyAchieved,
    "prospect_monthly_achieved": prospectMonthlyAchieved,
  };
}

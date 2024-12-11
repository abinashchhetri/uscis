// To parse this JSON data, do
//
//     final caseHistoryModel = caseHistoryModelFromJson(jsonString);

import 'dart:convert';

CaseHistoryModel caseHistoryModelFromJson(String str) => CaseHistoryModel.fromJson(json.decode(str));

String caseHistoryModelToJson(CaseHistoryModel data) => json.encode(data.toJson());

class CaseHistoryModel {
    final int id;
    final String name;
    final String receiptNumber;
    final String formType;
    final DateTime submittedDate;
    final int userId;
    final DateTime createdAt;
    final DateTime updatedAt;
    final List<History> histories;

    CaseHistoryModel({
        required this.id,
        required this.name,
        required this.receiptNumber,
        required this.formType,
        required this.submittedDate,
        required this.userId,
        required this.createdAt,
        required this.updatedAt,
        required this.histories,
    });

    factory CaseHistoryModel.fromJson(Map<String, dynamic> json) => CaseHistoryModel(
        id: json["id"],
        name: json["name"],
        receiptNumber: json["receipt_number"],
        formType: json["form_type"],
        submittedDate: DateTime.parse(json["submitted_date"]),
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        histories: List<History>.from(json["histories"].map((x) => History.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "receipt_number": receiptNumber,
        "form_type": formType,
        "submitted_date": submittedDate.toIso8601String(),
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "histories": List<dynamic>.from(histories.map((x) => x.toJson())),
    };
}

class History {
    final int id;
    final DateTime modifiedDate;
    final String status;
    final String description;
    final int caseInfoId;
    final DateTime createdAt;
    final DateTime updatedAt;

    History({
        required this.id,
        required this.modifiedDate,
        required this.status,
        required this.description,
        required this.caseInfoId,
        required this.createdAt,
        required this.updatedAt,
    });

    factory History.fromJson(Map<String, dynamic> json) => History(
        id: json["id"],
        modifiedDate: DateTime.parse(json["modified_date"]),
        status: json["status"],
        description: json["description"],
        caseInfoId: json["case_info_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "modified_date": modifiedDate.toIso8601String(),
        "status": status,
        "description": description,
        "case_info_id": caseInfoId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

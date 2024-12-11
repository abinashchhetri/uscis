// To parse this JSON data, do
//
//     final searchedCase = searchedCaseFromJson(jsonString);

import 'dart:convert';

SearchedCase searchedCaseFromJson(String str) => SearchedCase.fromJson(json.decode(str));

String searchedCaseToJson(SearchedCase data) => json.encode(data.toJson());

class SearchedCase {
    final CaseStatus caseStatus;

    SearchedCase({
        required this.caseStatus,
    });

    factory SearchedCase.fromJson(Map<String, dynamic> json) => SearchedCase(
        caseStatus: CaseStatus.fromJson(json["case_status"]),
    );

    Map<String, dynamic> toJson() => {
        "case_status": caseStatus.toJson(),
    };
}

class CaseStatus {
    final String receiptNumber;
    final String formType;
    final String submittedDate;
    final String modifiedDate;
    final String currentCaseStatusTextEn;
    final String currentCaseStatusDescEn;
    final String currentCaseStatusTextEs;
    final String currentCaseStatusDescEs;
    final dynamic histCaseStatus;

    CaseStatus({
        required this.receiptNumber,
        required this.formType,
        required this.submittedDate,
        required this.modifiedDate,
        required this.currentCaseStatusTextEn,
        required this.currentCaseStatusDescEn,
        required this.currentCaseStatusTextEs,
        required this.currentCaseStatusDescEs,
        required this.histCaseStatus,
    });

    factory CaseStatus.fromJson(Map<String, dynamic> json) => CaseStatus(
        receiptNumber: json["receiptNumber"],
        formType: json["formType"],
        submittedDate: json["submittedDate"],
        modifiedDate: json["modifiedDate"],
        currentCaseStatusTextEn: json["current_case_status_text_en"],
        currentCaseStatusDescEn: json["current_case_status_desc_en"],
        currentCaseStatusTextEs: json["current_case_status_text_es"],
        currentCaseStatusDescEs: json["current_case_status_desc_es"],
        histCaseStatus: json["hist_case_status"],
    );

    Map<String, dynamic> toJson() => {
        "receiptNumber": receiptNumber,
        "formType": formType,
        "submittedDate": submittedDate,
        "modifiedDate": modifiedDate,
        "current_case_status_text_en": currentCaseStatusTextEn,
        "current_case_status_desc_en": currentCaseStatusDescEn,
        "current_case_status_text_es": currentCaseStatusTextEs,
        "current_case_status_desc_es": currentCaseStatusDescEs,
        "hist_case_status": histCaseStatus,
    };
}

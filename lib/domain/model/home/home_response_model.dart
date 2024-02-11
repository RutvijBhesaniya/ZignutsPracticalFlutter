// To parse this JSON data, do
//
//     final homeResponseModel = homeResponseModelFromJson(jsonString);

import 'dart:convert';

HomeResponseModel homeResponseModelFromJson(String str) =>
    HomeResponseModel.fromJson(json.decode(str));

String homeResponseModelToJson(HomeResponseModel data) =>
    json.encode(data.toJson());

class HomeResponseModel {
  int status;
  String message;
  Data data;

  HomeResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      HomeResponseModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  List<Resort> resort;
  int count;

  Data({
    required this.resort,
    required this.count,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        resort:
            List<Resort>.from(json["resort"].map((x) => Resort.fromJson(x))),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "resort": List<dynamic>.from(resort.map((x) => x.toJson())),
        "count": count,
      };
}

class Resort {
  int id;
  String name;
  String address1;
  String? address2;
  String city;
  String zipcode;
  String state;
  dynamic countryId;
  int currencyId;
  String image;
  dynamic thumbnil;
  String? companyName;
  String? registryNumber;
  String? tvaNumber;
  String? email;
  String? phone;
  String? initial;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String country;
  String? fromEmail;
  String? ginkoiaEmail;
  int isSendEmailToGinkoia;
  int isSendAllEmails;
  int courseCount;
  int addOnProductCount;
  int rentalProductCount;
  int privateCourseCount;
  int groupCourseCount;
  Currency currency;

  Resort({
    required this.id,
    required this.name,
    required this.address1,
    required this.address2,
    required this.city,
    required this.zipcode,
    required this.state,
    required this.countryId,
    required this.currencyId,
    required this.image,
    required this.thumbnil,
    required this.companyName,
    required this.registryNumber,
    required this.tvaNumber,
    required this.email,
    required this.phone,
    required this.initial,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.country,
    required this.fromEmail,
    required this.ginkoiaEmail,
    required this.isSendEmailToGinkoia,
    required this.isSendAllEmails,
    required this.courseCount,
    required this.addOnProductCount,
    required this.rentalProductCount,
    required this.privateCourseCount,
    required this.groupCourseCount,
    required this.currency,
  });

  factory Resort.fromJson(Map<String, dynamic> json) => Resort(
        id: json["id"],
        name: json["name"],
        address1: json["address_1"],
        address2: json["address_2"],
        city: json["city"],
        zipcode: json["zipcode"],
        state: json["state"],
        countryId: json["country_id"],
        currencyId: json["currency_id"],
        image: json["image"],
        thumbnil: json["thumbnil"],
        companyName: json["company_name"],
        registryNumber: json["registry_number"],
        tvaNumber: json["tva_number"],
        email: json["email"],
        phone: json["phone"],
        initial: json["initial"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        country: json["country"],
        fromEmail: json["from_email"],
        ginkoiaEmail: json["ginkoia_email"],
        isSendEmailToGinkoia: json["is_send_email_to_ginkoia"],
        isSendAllEmails: json["is_send_all_emails"],
        courseCount: json["course_count"],
        addOnProductCount: json["Add_on_product_count"],
        rentalProductCount: json["Rental_product_count"],
        privateCourseCount: json["private_course_count"],
        groupCourseCount: json["group_course_count"],
        currency: Currency.fromJson(json["currency"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address_1": address1,
        "address_2": address2,
        "city": city,
        "zipcode": zipcode,
        "state": state,
        "country_id": countryId,
        "currency_id": currencyId,
        "image": image,
        "thumbnil": thumbnil,
        "company_name": companyName,
        "registry_number": registryNumber,
        "tva_number": tvaNumber,
        "email": email,
        "phone": phone,
        "initial": initial,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "country": country,
        "from_email": fromEmail,
        "ginkoia_email": ginkoiaEmail,
        "is_send_email_to_ginkoia": isSendEmailToGinkoia,
        "is_send_all_emails": isSendAllEmails,
        "course_count": courseCount,
        "Add_on_product_count": addOnProductCount,
        "Rental_product_count": rentalProductCount,
        "private_course_count": privateCourseCount,
        "group_course_count": groupCourseCount,
        "currency": currency.toJson(),
      };
}

class Currency {
  int id;
  Name name;
  Code code;
  Symbole symbole;
  int isDefault;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int resortCount;

  Currency({
    required this.id,
    required this.name,
    required this.code,
    required this.symbole,
    required this.isDefault,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.resortCount,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        code: codeValues.map[json["code"]]!,
        symbole: symboleValues.map[json["symbole"]]!,
        isDefault: json["is_default"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        resortCount: json["resort_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "code": codeValues.reverse[code],
        "symbole": symboleValues.reverse[symbole],
        "is_default": isDefault,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "resort_count": resortCount,
      };
}

enum Code { EU, EURO, INR, USD }

final codeValues = EnumValues(
    {"EU": Code.EU, "Euro": Code.EURO, "INR": Code.INR, "USD": Code.USD});

enum Name { DOLLAR, EURO, RUPEE }

final nameValues =
    EnumValues({"Dollar": Name.DOLLAR, "Euro": Name.EURO, "Rupee": Name.RUPEE});

enum Symbole { EMPTY, PURPLE, SYMBOLE }

final symboleValues = EnumValues(
    {"€": Symbole.EMPTY, "\u0024": Symbole.PURPLE, "₹": Symbole.SYMBOLE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

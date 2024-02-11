// To parse this JSON data, do
//
//     final signUpResponseModel = signUpResponseModelFromJson(jsonString);

import 'dart:convert';

SignUpResponseModel signUpResponseModelFromJson(String str) =>
    SignUpResponseModel.fromJson(json.decode(str));

String signUpResponseModelToJson(SignUpResponseModel data) =>
    json.encode(data.toJson());

class SignUpResponseModel {
  String message;
  SignUpResponseModelData data;

  SignUpResponseModel({
    required this.message,
    required this.data,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      SignUpResponseModel(
        message: json["message"],
        data: SignUpResponseModelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}

class SignUpResponseModelData {
  DataData data;
  int isProfileFullfilled;
  dynamic amazoneKey;
  dynamic amazoneSecret;

  SignUpResponseModelData({
    required this.data,
    required this.isProfileFullfilled,
    required this.amazoneKey,
    required this.amazoneSecret,
  });

  factory SignUpResponseModelData.fromJson(Map<String, dynamic> json) =>
      SignUpResponseModelData(
        data: DataData.fromJson(json["data"]),
        isProfileFullfilled: json["is_profile_fullfilled"],
        amazoneKey: json["amazone_key"],
        amazoneSecret: json["amazone_secret"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "is_profile_fullfilled": isProfileFullfilled,
        "amazone_key": amazoneKey,
        "amazone_secret": amazoneSecret,
      };
}

class DataData {
  int id;
  String firstName;
  String lastName;
  String email;
  dynamic phone;
  dynamic emailVerifiedAt;
  dynamic roleId;
  String isType;
  int isActive;
  dynamic gender;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int contactId;
  int isAppUser;
  String name;
  String emailToken;
  String deviceToken;
  int isThirdPartyUser;
  int isVerified;
  int isNotification;
  int openfireRegistration;
  dynamic jabberId;
  dynamic registerCode;
  dynamic registerCodeExpireAt;
  dynamic registerCodeVerifiedAt;
  int isDuoLoggedin;
  dynamic websiteLoginCount;
  dynamic deviceType;
  int resortCount;
  String role;
  String typeName;
  String languageLocale;
  ContactDetail contactDetail;

  DataData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.emailVerifiedAt,
    required this.roleId,
    required this.isType,
    required this.isActive,
    required this.gender,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.contactId,
    required this.isAppUser,
    required this.name,
    required this.emailToken,
    required this.deviceToken,
    required this.isThirdPartyUser,
    required this.isVerified,
    required this.isNotification,
    required this.openfireRegistration,
    required this.jabberId,
    required this.registerCode,
    required this.registerCodeExpireAt,
    required this.registerCodeVerifiedAt,
    required this.isDuoLoggedin,
    required this.websiteLoginCount,
    required this.deviceType,
    required this.resortCount,
    required this.role,
    required this.typeName,
    required this.languageLocale,
    required this.contactDetail,
  });

  factory DataData.fromJson(Map<String, dynamic> json) => DataData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        emailVerifiedAt: json["email_verified_at"],
        roleId: json["role_id"],
        isType: json["is_type"],
        isActive: json["is_active"],
        gender: json["gender"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        contactId: json["contact_id"],
        isAppUser: json["is_app_user"],
        name: json["name"],
        emailToken: json["email_token"],
        deviceToken: json["device_token"],
        isThirdPartyUser: json["is_third_party_user"],
        isVerified: json["is_verified"],
        isNotification: json["is_notification"],
        openfireRegistration: json["openfire_registration"],
        jabberId: json["jabber_id"],
        registerCode: json["register_code"],
        registerCodeExpireAt: json["register_code_expire_at"],
        registerCodeVerifiedAt: json["register_code_verified_at"],
        isDuoLoggedin: json["is_duo_loggedin"],
        websiteLoginCount: json["website_login_count"],
        deviceType: json["device_type"],
        resortCount: json["resort_count"],
        role: json["role"],
        typeName: json["type_name"],
        languageLocale: json["language_locale"],
        contactDetail: ContactDetail.fromJson(json["contact_detail"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "email_verified_at": emailVerifiedAt,
        "role_id": roleId,
        "is_type": isType,
        "is_active": isActive,
        "gender": gender,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "contact_id": contactId,
        "is_app_user": isAppUser,
        "name": name,
        "email_token": emailToken,
        "device_token": deviceToken,
        "is_third_party_user": isThirdPartyUser,
        "is_verified": isVerified,
        "is_notification": isNotification,
        "openfire_registration": openfireRegistration,
        "jabber_id": jabberId,
        "register_code": registerCode,
        "register_code_expire_at": registerCodeExpireAt,
        "register_code_verified_at": registerCodeVerifiedAt,
        "is_duo_loggedin": isDuoLoggedin,
        "website_login_count": websiteLoginCount,
        "device_type": deviceType,
        "resort_count": resortCount,
        "role": role,
        "type_name": typeName,
        "language_locale": languageLocale,
        "contact_detail": contactDetail.toJson(),
      };
}

class ContactDetail {
  int id;
  int categoryId;
  dynamic difficultyLevelId;
  dynamic salutation;
  String firstName;
  dynamic middleName;
  String lastName;
  String email;
  dynamic mobile1;
  dynamic mobile2;
  dynamic nationality;
  dynamic designation;
  dynamic dob;
  dynamic joiningDate;
  dynamic gender;
  dynamic profilePic;
  int displayInApp;
  dynamic customerType;
  int createdBy;
  dynamic updatedBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  dynamic instructorSecondaryTagId;
  int isActive;
  dynamic subcategoryId;
  dynamic legalStatus;
  dynamic businessType;
  dynamic preferPaymentMethodId;
  int qrNumber;
  dynamic serviceName;
  dynamic otherAddress;
  dynamic contactPersonEmail;
  dynamic contactPersonName;
  dynamic lastBookingDate;
  dynamic totalFeedback;
  dynamic averageRating;
  dynamic signature;
  dynamic accommodationId;
  dynamic accomodation;
  int isShaerdTour;
  int isShaerdBusiness;
  dynamic tourId;
  dynamic businessId;
  dynamic registerCountry;
  int isNewsLatterSubscription;
  dynamic referral;
  dynamic additionComments;
  dynamic colorCode;
  dynamic contactInstructor;
  dynamic insuranceNumber;
  dynamic codeApe;
  dynamic urssafNumber;
  dynamic dddNumber;
  dynamic siretNumber;
  dynamic registerCity;
  dynamic companyRegisterNumber;
  dynamic vatNumber;
  int isSnowboard;
  int isSki;
  dynamic skiingLevel;
  dynamic instructorNumber;
  dynamic globalLevelId;
  dynamic activityId;
  dynamic professional;
  dynamic instructorGenderRequest;
  dynamic invoiceStatus;
  dynamic groupBooking;
  dynamic privateBooking;
  dynamic activitie;
  dynamic products;
  dynamic rental;
  dynamic accountLoginType;
  dynamic levelId;
  dynamic b2BReferenceNumber;
  dynamic customerReferenceNumber;
  dynamic tradeRegisterNo;
  dynamic countryOfTheBusinessProvider;
  dynamic tradeRegister;
  dynamic countryCode1;
  dynamic countryCode2;
  int isAdminCreated;
  dynamic alphaCode1;
  dynamic alphaCode2;
  int isHardCoded;
  String fullName;
  String languageLocale;
  List<dynamic> languages;

  ContactDetail({
    required this.id,
    required this.categoryId,
    required this.difficultyLevelId,
    required this.salutation,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.email,
    required this.mobile1,
    required this.mobile2,
    required this.nationality,
    required this.designation,
    required this.dob,
    required this.joiningDate,
    required this.gender,
    required this.profilePic,
    required this.displayInApp,
    required this.customerType,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.instructorSecondaryTagId,
    required this.isActive,
    required this.subcategoryId,
    required this.legalStatus,
    required this.businessType,
    required this.preferPaymentMethodId,
    required this.qrNumber,
    required this.serviceName,
    required this.otherAddress,
    required this.contactPersonEmail,
    required this.contactPersonName,
    required this.lastBookingDate,
    required this.totalFeedback,
    required this.averageRating,
    required this.signature,
    required this.accommodationId,
    required this.accomodation,
    required this.isShaerdTour,
    required this.isShaerdBusiness,
    required this.tourId,
    required this.businessId,
    required this.registerCountry,
    required this.isNewsLatterSubscription,
    required this.referral,
    required this.additionComments,
    required this.colorCode,
    required this.contactInstructor,
    required this.insuranceNumber,
    required this.codeApe,
    required this.urssafNumber,
    required this.dddNumber,
    required this.siretNumber,
    required this.registerCity,
    required this.companyRegisterNumber,
    required this.vatNumber,
    required this.isSnowboard,
    required this.isSki,
    required this.skiingLevel,
    required this.instructorNumber,
    required this.globalLevelId,
    required this.activityId,
    required this.professional,
    required this.instructorGenderRequest,
    required this.invoiceStatus,
    required this.groupBooking,
    required this.privateBooking,
    required this.activitie,
    required this.products,
    required this.rental,
    required this.accountLoginType,
    required this.levelId,
    required this.b2BReferenceNumber,
    required this.customerReferenceNumber,
    required this.tradeRegisterNo,
    required this.countryOfTheBusinessProvider,
    required this.tradeRegister,
    required this.countryCode1,
    required this.countryCode2,
    required this.isAdminCreated,
    required this.alphaCode1,
    required this.alphaCode2,
    required this.isHardCoded,
    required this.fullName,
    required this.languageLocale,
    required this.languages,
  });

  factory ContactDetail.fromJson(Map<String, dynamic> json) => ContactDetail(
        id: json["id"],
        categoryId: json["category_id"],
        difficultyLevelId: json["difficulty_level_id"],
        salutation: json["salutation"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        email: json["email"],
        mobile1: json["mobile1"],
        mobile2: json["mobile2"],
        nationality: json["nationality"],
        designation: json["designation"],
        dob: json["dob"],
        joiningDate: json["joining_date"],
        gender: json["gender"],
        profilePic: json["profile_pic"],
        displayInApp: json["display_in_app"],
        customerType: json["customer_type"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        instructorSecondaryTagId: json["instructor_secondary_tag_id"],
        isActive: json["is_active"],
        subcategoryId: json["subcategory_id"],
        legalStatus: json["legal_status"],
        businessType: json["business_type"],
        preferPaymentMethodId: json["prefer_payment_method_id"],
        qrNumber: json["QR_number"],
        serviceName: json["service_name"],
        otherAddress: json["other_address"],
        contactPersonEmail: json["contact_person_email"],
        contactPersonName: json["contact_person_name"],
        lastBookingDate: json["last_booking_date"],
        totalFeedback: json["total_feedback"],
        averageRating: json["average_rating"],
        signature: json["signature"],
        accommodationId: json["accommodation_id"],
        accomodation: json["accomodation"],
        isShaerdTour: json["is_shaerd_tour"],
        isShaerdBusiness: json["is_shaerd_business"],
        tourId: json["tour_id"],
        businessId: json["business_id"],
        registerCountry: json["register_country"],
        isNewsLatterSubscription: json["is_news_latter_subscription"],
        referral: json["referral"],
        additionComments: json["addition_comments"],
        colorCode: json["color_code"],
        contactInstructor: json["contact_instructor"],
        insuranceNumber: json["insurance_number"],
        codeApe: json["code_ape"],
        urssafNumber: json["urssaf_number"],
        dddNumber: json["ddd_number"],
        siretNumber: json["siret_number"],
        registerCity: json["register_city"],
        companyRegisterNumber: json["company_register_number"],
        vatNumber: json["vat_number"],
        isSnowboard: json["is_snowboard"],
        isSki: json["is_ski"],
        skiingLevel: json["skiing_level"],
        instructorNumber: json["instructor_number"],
        globalLevelId: json["global_level_id"],
        activityId: json["activity_id"],
        professional: json["professional"],
        instructorGenderRequest: json["instructor_gender_request"],
        invoiceStatus: json["invoice_status"],
        groupBooking: json["group_booking"],
        privateBooking: json["private_booking"],
        activitie: json["activitie"],
        products: json["products"],
        rental: json["rental"],
        accountLoginType: json["account_login_type"],
        levelId: json["level_id"],
        b2BReferenceNumber: json["b2b_reference_number"],
        customerReferenceNumber: json["customer_reference_number"],
        tradeRegisterNo: json["trade_register_no"],
        countryOfTheBusinessProvider: json["country_of_the_business_provider"],
        tradeRegister: json["trade_register"],
        countryCode1: json["country_code1"],
        countryCode2: json["country_code2"],
        isAdminCreated: json["is_admin_created"],
        alphaCode1: json["alpha_code1"],
        alphaCode2: json["alpha_code2"],
        isHardCoded: json["is_hard_coded"],
        fullName: json["full_name"],
        languageLocale: json["language_locale"],
        languages: List<dynamic>.from(json["languages"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "difficulty_level_id": difficultyLevelId,
        "salutation": salutation,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "email": email,
        "mobile1": mobile1,
        "mobile2": mobile2,
        "nationality": nationality,
        "designation": designation,
        "dob": dob,
        "joining_date": joiningDate,
        "gender": gender,
        "profile_pic": profilePic,
        "display_in_app": displayInApp,
        "customer_type": customerType,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "instructor_secondary_tag_id": instructorSecondaryTagId,
        "is_active": isActive,
        "subcategory_id": subcategoryId,
        "legal_status": legalStatus,
        "business_type": businessType,
        "prefer_payment_method_id": preferPaymentMethodId,
        "QR_number": qrNumber,
        "service_name": serviceName,
        "other_address": otherAddress,
        "contact_person_email": contactPersonEmail,
        "contact_person_name": contactPersonName,
        "last_booking_date": lastBookingDate,
        "total_feedback": totalFeedback,
        "average_rating": averageRating,
        "signature": signature,
        "accommodation_id": accommodationId,
        "accomodation": accomodation,
        "is_shaerd_tour": isShaerdTour,
        "is_shaerd_business": isShaerdBusiness,
        "tour_id": tourId,
        "business_id": businessId,
        "register_country": registerCountry,
        "is_news_latter_subscription": isNewsLatterSubscription,
        "referral": referral,
        "addition_comments": additionComments,
        "color_code": colorCode,
        "contact_instructor": contactInstructor,
        "insurance_number": insuranceNumber,
        "code_ape": codeApe,
        "urssaf_number": urssafNumber,
        "ddd_number": dddNumber,
        "siret_number": siretNumber,
        "register_city": registerCity,
        "company_register_number": companyRegisterNumber,
        "vat_number": vatNumber,
        "is_snowboard": isSnowboard,
        "is_ski": isSki,
        "skiing_level": skiingLevel,
        "instructor_number": instructorNumber,
        "global_level_id": globalLevelId,
        "activity_id": activityId,
        "professional": professional,
        "instructor_gender_request": instructorGenderRequest,
        "invoice_status": invoiceStatus,
        "group_booking": groupBooking,
        "private_booking": privateBooking,
        "activitie": activitie,
        "products": products,
        "rental": rental,
        "account_login_type": accountLoginType,
        "level_id": levelId,
        "b2b_reference_number": b2BReferenceNumber,
        "customer_reference_number": customerReferenceNumber,
        "trade_register_no": tradeRegisterNo,
        "country_of_the_business_provider": countryOfTheBusinessProvider,
        "trade_register": tradeRegister,
        "country_code1": countryCode1,
        "country_code2": countryCode2,
        "is_admin_created": isAdminCreated,
        "alpha_code1": alphaCode1,
        "alpha_code2": alphaCode2,
        "is_hard_coded": isHardCoded,
        "full_name": fullName,
        "language_locale": languageLocale,
        "languages": List<dynamic>.from(languages.map((x) => x)),
      };
}

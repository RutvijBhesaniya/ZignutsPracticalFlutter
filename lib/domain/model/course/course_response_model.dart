// To parse this JSON data, do
//
//     final courseResponseModel = courseResponseModelFromJson(jsonString);

import 'dart:convert';

CourseResponseModel courseResponseModelFromJson(String str) =>
    CourseResponseModel.fromJson(json.decode(str));

String courseResponseModelToJson(CourseResponseModel data) =>
    json.encode(data.toJson());

class CourseResponseModel {
  String? message;
  List<Datum>? data;

  CourseResponseModel({
    this.message,
    this.data,
  });

  factory CourseResponseModel.fromJson(Map<String, dynamic> json) =>
      CourseResponseModel(
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int? id;
  int? bookingProcessCourseDetailId;
  int? bookingProcessCustomerDetailId;
  int? bookingProcessInstructorDetailId;
  int? bookingProcessPaymentDetailId;
  dynamic parentBookingId;
  dynamic note;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? bookingNumber;
  dynamic quoteNumber;
  int? isQuoteSend;
  int? qrNumber;
  dynamic payiId;
  int? isDraft;
  int? isThirdParty;
  int? isTrash;
  int? isCancel;
  dynamic trashAt;
  dynamic deletedAt;
  int? resortId;
  String? bookingType;
  String? quoteStatus;
  int? isProduct;
  dynamic selectedGroupId;
  bool? addToGroupList;
  dynamic expiredAt;
  int? reminderCount;
  DateTime? lastReminderSentAt;
  int? isDepositRequest;
  dynamic totalAmount;
  dynamic quoteExpireAt;
  int? isMergeInvoice;
  dynamic mergeBookingNumber;
  int? isWebsiteBooking;
  dynamic additionComments;
  int? isRentals;
  String? type;
  int? isBoth;
  dynamic adminComments;
  dynamic isRequestedInstructor;
  dynamic requestedInstructorName;
  String? ginkoiaEmailSentStatus;
  dynamic bookingClientReferenceNumber;
  dynamic reservationLink;
  int? isSendConfirmationEmail;
  int? isSendPaymentRemainderEmail;
  int? paymentReminderCount;
  dynamic lastPaymentReminderSentAt;
  String? proformaInvoiceNumber;
  String? uniqueNumber;
  dynamic feedbackId;
  dynamic averageRating;
  bool? isCourseForCustomer;
  String? bookingQr;
  bool? isCreditNoteAttached;
  String? typeName;
  CourseDetail? courseDetail;
  ResortDetails? resortDetails;
  List<dynamic>? creditNotesDetails;

  Datum({
    this.id,
    this.bookingProcessCourseDetailId,
    this.bookingProcessCustomerDetailId,
    this.bookingProcessInstructorDetailId,
    this.bookingProcessPaymentDetailId,
    this.parentBookingId,
    this.note,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.bookingNumber,
    this.quoteNumber,
    this.isQuoteSend,
    this.qrNumber,
    this.payiId,
    this.isDraft,
    this.isThirdParty,
    this.isTrash,
    this.isCancel,
    this.trashAt,
    this.deletedAt,
    this.resortId,
    this.bookingType,
    this.quoteStatus,
    this.isProduct,
    this.selectedGroupId,
    this.addToGroupList,
    this.expiredAt,
    this.reminderCount,
    this.lastReminderSentAt,
    this.isDepositRequest,
    this.totalAmount,
    this.quoteExpireAt,
    this.isMergeInvoice,
    this.mergeBookingNumber,
    this.isWebsiteBooking,
    this.additionComments,
    this.isRentals,
    this.type,
    this.isBoth,
    this.adminComments,
    this.isRequestedInstructor,
    this.requestedInstructorName,
    this.ginkoiaEmailSentStatus,
    this.bookingClientReferenceNumber,
    this.reservationLink,
    this.isSendConfirmationEmail,
    this.isSendPaymentRemainderEmail,
    this.paymentReminderCount,
    this.lastPaymentReminderSentAt,
    this.proformaInvoiceNumber,
    this.uniqueNumber,
    this.feedbackId,
    this.averageRating,
    this.isCourseForCustomer,
    this.bookingQr,
    this.isCreditNoteAttached,
    this.typeName,
    this.courseDetail,
    this.resortDetails,
    this.creditNotesDetails,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        bookingProcessCourseDetailId: json["booking_process_course_detail_id"],
        bookingProcessCustomerDetailId:
            json["booking_process_customer_detail_id"],
        bookingProcessInstructorDetailId:
            json["booking_process_instructor_detail_id"],
        bookingProcessPaymentDetailId:
            json["booking_process_payment_detail_id"],
        parentBookingId: json["parent_booking_id"],
        note: json["note"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        bookingNumber: json["booking_number"],
        quoteNumber: json["quote_number"],
        isQuoteSend: json["is_quote_send"],
        qrNumber: json["QR_number"],
        payiId: json["payi_id"],
        isDraft: json["is_draft"],
        isThirdParty: json["is_third_party"],
        isTrash: json["is_trash"],
        isCancel: json["is_cancel"],
        trashAt: json["trash_at"],
        deletedAt: json["deleted_at"],
        resortId: json["resort_id"],
        bookingType: json["booking_type"],
        quoteStatus: json["quote_status"],
        isProduct: json["is_product"],
        selectedGroupId: json["selected_group_id"],
        addToGroupList: json["add_to_group_list"],
        expiredAt: json["expired_at"],
        reminderCount: json["reminder_count"],
        lastReminderSentAt: json["last_reminder_sent_at"] == null
            ? null
            : DateTime.parse(json["last_reminder_sent_at"]),
        isDepositRequest: json["is_deposit_request"],
        totalAmount: json["total_amount"],
        quoteExpireAt: json["quote_expire_at"],
        isMergeInvoice: json["is_merge_invoice"],
        mergeBookingNumber: json["merge_booking_number"],
        isWebsiteBooking: json["is_website_booking"],
        additionComments: json["addition_comments"],
        isRentals: json["is_rentals"],
        type: json["type"],
        isBoth: json["is_both"],
        adminComments: json["admin_comments"],
        isRequestedInstructor: json["is_requested_instructor"],
        requestedInstructorName: json["requested_instructor_name"],
        ginkoiaEmailSentStatus: json["ginkoia_email_sent_status"],
        bookingClientReferenceNumber: json["booking_client_reference_number"],
        reservationLink: json["reservation_link"],
        isSendConfirmationEmail: json["is_send_confirmation_email"],
        isSendPaymentRemainderEmail: json["is_send_payment_remainder_email"],
        paymentReminderCount: json["payment_reminder_count"],
        lastPaymentReminderSentAt: json["last_payment_reminder_sent_at"],
        proformaInvoiceNumber: json["proforma_invoice_number"],
        uniqueNumber: json["unique_number"],
        feedbackId: json["feedback_id"],
        averageRating: json["average_rating"],
        isCourseForCustomer: json["is_course_for_customer"],
        bookingQr: json["booking_qr"],
        isCreditNoteAttached: json["is_credit_note_attached"],
        typeName: json["type_name"],
        courseDetail: json["course_detail"] == null
            ? null
            : CourseDetail.fromJson(json["course_detail"]),
        resortDetails: json["resort_details"] == null
            ? null
            : ResortDetails.fromJson(json["resort_details"]),
        creditNotesDetails: json["credit_notes_details"] == null
            ? []
            : List<dynamic>.from(json["credit_notes_details"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "booking_process_course_detail_id": bookingProcessCourseDetailId,
        "booking_process_customer_detail_id": bookingProcessCustomerDetailId,
        "booking_process_instructor_detail_id":
            bookingProcessInstructorDetailId,
        "booking_process_payment_detail_id": bookingProcessPaymentDetailId,
        "parent_booking_id": parentBookingId,
        "note": note,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "booking_number": bookingNumber,
        "quote_number": quoteNumber,
        "is_quote_send": isQuoteSend,
        "QR_number": qrNumber,
        "payi_id": payiId,
        "is_draft": isDraft,
        "is_third_party": isThirdParty,
        "is_trash": isTrash,
        "is_cancel": isCancel,
        "trash_at": trashAt,
        "deleted_at": deletedAt,
        "resort_id": resortId,
        "booking_type": bookingType,
        "quote_status": quoteStatus,
        "is_product": isProduct,
        "selected_group_id": selectedGroupId,
        "add_to_group_list": addToGroupList,
        "expired_at": expiredAt,
        "reminder_count": reminderCount,
        "last_reminder_sent_at": lastReminderSentAt?.toIso8601String(),
        "is_deposit_request": isDepositRequest,
        "total_amount": totalAmount,
        "quote_expire_at": quoteExpireAt,
        "is_merge_invoice": isMergeInvoice,
        "merge_booking_number": mergeBookingNumber,
        "is_website_booking": isWebsiteBooking,
        "addition_comments": additionComments,
        "is_rentals": isRentals,
        "type": type,
        "is_both": isBoth,
        "admin_comments": adminComments,
        "is_requested_instructor": isRequestedInstructor,
        "requested_instructor_name": requestedInstructorName,
        "ginkoia_email_sent_status": ginkoiaEmailSentStatus,
        "booking_client_reference_number": bookingClientReferenceNumber,
        "reservation_link": reservationLink,
        "is_send_confirmation_email": isSendConfirmationEmail,
        "is_send_payment_remainder_email": isSendPaymentRemainderEmail,
        "payment_reminder_count": paymentReminderCount,
        "last_payment_reminder_sent_at": lastPaymentReminderSentAt,
        "proforma_invoice_number": proformaInvoiceNumber,
        "unique_number": uniqueNumber,
        "feedback_id": feedbackId,
        "average_rating": averageRating,
        "is_course_for_customer": isCourseForCustomer,
        "booking_qr": bookingQr,
        "is_credit_note_attached": isCreditNoteAttached,
        "type_name": typeName,
        "course_detail": courseDetail?.toJson(),
        "resort_details": resortDetails?.toJson(),
        "credit_notes_details": creditNotesDetails == null
            ? []
            : List<dynamic>.from(creditNotesDetails!.map((x) => x)),
      };
}

class CourseDetail {
  int? id;
  int? bookingProcessId;
  int? courseId;
  int? isEnrolled;
  String? courseType;
  String? customizeCourseType;
  dynamic courseDetailId;
  DateTime? startDateTime;
  DateTime? endDateTime;
  DateTime? startDate;
  DateTime? endDate;
  String? startTime;
  String? endTime;
  int? courseRestrictedScheduleId;
  dynamic courseFixedDateScheduleId;
  dynamic courseNoOfRestrictionsScheduleId;
  int? courseNoRestrictionsScheduleId;
  int? isAlternativeDays;
  dynamic lead;
  dynamic contactId;
  dynamic sourceId;
  dynamic noOfInstructor;
  dynamic noOfParticipant;
  int? meetingPointId;
  String? meetingPoint;
  double? meetingPointLat;
  double? meetingPointLong;
  dynamic difficultyLevel;
  int? isExtraParticipant;
  int? noOfExtraParticipant;
  int? totalDays;
  int? totalHours;
  dynamic lunchHour;
  dynamic lunchStartTime;
  dynamic lunchEndTime;
  int? createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  int? isSplitTime;
  dynamic splitStartTime;
  dynamic splitEndTime;
  dynamic groupRestrictedScheduleId;
  String? dateStatus;
  String? dateStatusId;
  bool? in24Hourse;
  RestrictedScheduleDetail? restrictedScheduleDetail;
  String? timeDetails;
  CourseData? courseData;

  CourseDetail({
    this.id,
    this.bookingProcessId,
    this.courseId,
    this.isEnrolled,
    this.courseType,
    this.customizeCourseType,
    this.courseDetailId,
    this.startDateTime,
    this.endDateTime,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.courseRestrictedScheduleId,
    this.courseFixedDateScheduleId,
    this.courseNoOfRestrictionsScheduleId,
    this.courseNoRestrictionsScheduleId,
    this.isAlternativeDays,
    this.lead,
    this.contactId,
    this.sourceId,
    this.noOfInstructor,
    this.noOfParticipant,
    this.meetingPointId,
    this.meetingPoint,
    this.meetingPointLat,
    this.meetingPointLong,
    this.difficultyLevel,
    this.isExtraParticipant,
    this.noOfExtraParticipant,
    this.totalDays,
    this.totalHours,
    this.lunchHour,
    this.lunchStartTime,
    this.lunchEndTime,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isSplitTime,
    this.splitStartTime,
    this.splitEndTime,
    this.groupRestrictedScheduleId,
    this.dateStatus,
    this.dateStatusId,
    this.in24Hourse,
    this.restrictedScheduleDetail,
    this.timeDetails,
    this.courseData,
  });

  factory CourseDetail.fromJson(Map<String, dynamic> json) => CourseDetail(
        id: json["id"],
        bookingProcessId: json["booking_process_id"],
        courseId: json["course_id"],
        isEnrolled: json["is_enrolled"],
        courseType: json["course_type"],
        customizeCourseType: json["customize_course_type"],
        courseDetailId: json["course_detail_id"],
        startDateTime: json["StartDate_Time"] == null
            ? null
            : DateTime.parse(json["StartDate_Time"]),
        endDateTime: json["EndDate_Time"] == null
            ? null
            : DateTime.parse(json["EndDate_Time"]),
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        courseRestrictedScheduleId: json["course_restricted_schedule_id"],
        courseFixedDateScheduleId: json["course_fixed_date_schedule_id"],
        courseNoOfRestrictionsScheduleId:
            json["course_no_of_restrictions_schedule_id"],
        courseNoRestrictionsScheduleId:
            json["course_no_restrictions_schedule_id"],
        isAlternativeDays: json["is_alternative_days"],
        lead: json["lead"],
        contactId: json["contact_id"],
        sourceId: json["source_id"],
        noOfInstructor: json["no_of_instructor"],
        noOfParticipant: json["no_of_participant"],
        meetingPointId: json["meeting_point_id"],
        meetingPoint: json["meeting_point"],
        meetingPointLat: json["meeting_point_lat"]?.toDouble(),
        meetingPointLong: json["meeting_point_long"]?.toDouble(),
        difficultyLevel: json["difficulty_level"],
        isExtraParticipant: json["is_extra_participant"],
        noOfExtraParticipant: json["no_of_extra_participant"],
        totalDays: json["total_days"],
        totalHours: json["total_hours"],
        lunchHour: json["lunch_hour"],
        lunchStartTime: json["lunch_start_time"],
        lunchEndTime: json["lunch_end_time"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        isSplitTime: json["is_split_time"],
        splitStartTime: json["split_start_time"],
        splitEndTime: json["split_end_time"],
        groupRestrictedScheduleId: json["group_restricted_schedule_id"],
        dateStatus: json["date_status"],
        dateStatusId: json["date_status_id"],
        in24Hourse: json["in_24_hourse"],
        restrictedScheduleDetail: json["restricted_schedule_detail"] == null
            ? null
            : RestrictedScheduleDetail.fromJson(
                json["restricted_schedule_detail"]),
        timeDetails: json["time_details"],
        courseData: json["course_data"] == null
            ? null
            : CourseData.fromJson(json["course_data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "booking_process_id": bookingProcessId,
        "course_id": courseId,
        "is_enrolled": isEnrolled,
        "course_type": courseType,
        "customize_course_type": customizeCourseType,
        "course_detail_id": courseDetailId,
        "StartDate_Time": startDateTime?.toIso8601String(),
        "EndDate_Time": endDateTime?.toIso8601String(),
        "start_date":
            "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "start_time": startTime,
        "end_time": endTime,
        "course_restricted_schedule_id": courseRestrictedScheduleId,
        "course_fixed_date_schedule_id": courseFixedDateScheduleId,
        "course_no_of_restrictions_schedule_id":
            courseNoOfRestrictionsScheduleId,
        "course_no_restrictions_schedule_id": courseNoRestrictionsScheduleId,
        "is_alternative_days": isAlternativeDays,
        "lead": lead,
        "contact_id": contactId,
        "source_id": sourceId,
        "no_of_instructor": noOfInstructor,
        "no_of_participant": noOfParticipant,
        "meeting_point_id": meetingPointId,
        "meeting_point": meetingPoint,
        "meeting_point_lat": meetingPointLat,
        "meeting_point_long": meetingPointLong,
        "difficulty_level": difficultyLevel,
        "is_extra_participant": isExtraParticipant,
        "no_of_extra_participant": noOfExtraParticipant,
        "total_days": totalDays,
        "total_hours": totalHours,
        "lunch_hour": lunchHour,
        "lunch_start_time": lunchStartTime,
        "lunch_end_time": lunchEndTime,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "is_split_time": isSplitTime,
        "split_start_time": splitStartTime,
        "split_end_time": splitEndTime,
        "group_restricted_schedule_id": groupRestrictedScheduleId,
        "date_status": dateStatus,
        "date_status_id": dateStatusId,
        "in_24_hourse": in24Hourse,
        "restricted_schedule_detail": restrictedScheduleDetail?.toJson(),
        "time_details": timeDetails,
        "course_data": courseData?.toJson(),
      };
}

class CourseData {
  int? id;
  String? name;
  String? nameEn;
  String? type;
  String? customizeType;
  int? categoryId;
  int? resortId;
  dynamic subCategoryId;
  dynamic courseCategoryLevelId;
  dynamic courseCategoryActivityId;
  int? difficultyLevel;
  String? startTime;
  String? endTime;
  int? meetingPointId;
  dynamic restrictedStartDate;
  dynamic restrictedEndDate;
  dynamic restrictedNoOfDays;
  dynamic restrictedStartTime;
  dynamic restrictedEndTime;
  dynamic restrictedNoOfHours;
  dynamic maximumParticipant;
  int? isActive;
  int? isFeatureCourse;
  int? isDisplayOnWebsite;
  dynamic maximumInstructor;
  dynamic notes;
  dynamic notesEn;
  dynamic courseBanner;
  String? calPaymentType;
  dynamic pricePerItem;
  int? isArchived;
  int? isIncludeLunchHour;
  int? isPaymentRestriction;
  int? isCustomize;
  dynamic googleFormLink;
  dynamic embebdCode;
  int? createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic globalLevelId;
  dynamic minimumParticipant;
  dynamic activityId;
  int? minAge;
  int? maxAge;
  int? isInsurance;
  dynamic noOfSeats;
  dynamic noOfBookings;
  dynamic languageId;
  String? colorCode;
  String? levelCode;

  CourseData({
    this.id,
    this.name,
    this.nameEn,
    this.type,
    this.customizeType,
    this.categoryId,
    this.resortId,
    this.subCategoryId,
    this.courseCategoryLevelId,
    this.courseCategoryActivityId,
    this.difficultyLevel,
    this.startTime,
    this.endTime,
    this.meetingPointId,
    this.restrictedStartDate,
    this.restrictedEndDate,
    this.restrictedNoOfDays,
    this.restrictedStartTime,
    this.restrictedEndTime,
    this.restrictedNoOfHours,
    this.maximumParticipant,
    this.isActive,
    this.isFeatureCourse,
    this.isDisplayOnWebsite,
    this.maximumInstructor,
    this.notes,
    this.notesEn,
    this.courseBanner,
    this.calPaymentType,
    this.pricePerItem,
    this.isArchived,
    this.isIncludeLunchHour,
    this.isPaymentRestriction,
    this.isCustomize,
    this.googleFormLink,
    this.embebdCode,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.globalLevelId,
    this.minimumParticipant,
    this.activityId,
    this.minAge,
    this.maxAge,
    this.isInsurance,
    this.noOfSeats,
    this.noOfBookings,
    this.languageId,
    this.colorCode,
    this.levelCode,
  });

  factory CourseData.fromJson(Map<String, dynamic> json) => CourseData(
        id: json["id"],
        name: json["name"],
        nameEn: json["name_en"],
        type: json["type"],
        customizeType: json["customize_type"],
        categoryId: json["category_id"],
        resortId: json["resort_id"],
        subCategoryId: json["sub_category_id"],
        courseCategoryLevelId: json["course_category_level_id"],
        courseCategoryActivityId: json["course_category_activity_id"],
        difficultyLevel: json["difficulty_level"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        meetingPointId: json["meeting_point_id"],
        restrictedStartDate: json["restricted_start_date"],
        restrictedEndDate: json["restricted_end_date"],
        restrictedNoOfDays: json["restricted_no_of_days"],
        restrictedStartTime: json["restricted_start_time"],
        restrictedEndTime: json["restricted_end_time"],
        restrictedNoOfHours: json["restricted_no_of_hours"],
        maximumParticipant: json["maximum_participant"],
        isActive: json["is_active"],
        isFeatureCourse: json["is_feature_course"],
        isDisplayOnWebsite: json["is_display_on_website"],
        maximumInstructor: json["maximum_instructor"],
        notes: json["notes"],
        notesEn: json["notes_en"],
        courseBanner: json["course_banner"],
        calPaymentType: json["cal_payment_type"],
        pricePerItem: json["price_per_item"],
        isArchived: json["is_archived"],
        isIncludeLunchHour: json["is_include_lunch_hour"],
        isPaymentRestriction: json["is_payment_restriction"],
        isCustomize: json["is_customize"],
        googleFormLink: json["google_form_link"],
        embebdCode: json["embebd_code"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        globalLevelId: json["global_level_id"],
        minimumParticipant: json["minimum_participant"],
        activityId: json["activity_id"],
        minAge: json["min_age"],
        maxAge: json["max_age"],
        isInsurance: json["is_insurance"],
        noOfSeats: json["no_of_seats"],
        noOfBookings: json["no_of_bookings"],
        languageId: json["language_id"],
        colorCode: json["color_code"],
        levelCode: json["level_code"],

      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name_en": nameEn,
        "type": type,
        "customize_type": customizeType,
        "category_id": categoryId,
        "resort_id": resortId,
        "sub_category_id": subCategoryId,
        "course_category_level_id": courseCategoryLevelId,
        "course_category_activity_id": courseCategoryActivityId,
        "difficulty_level": difficultyLevel,
        "start_time": startTime,
        "end_time": endTime,
        "meeting_point_id": meetingPointId,
        "restricted_start_date": restrictedStartDate,
        "restricted_end_date": restrictedEndDate,
        "restricted_no_of_days": restrictedNoOfDays,
        "restricted_start_time": restrictedStartTime,
        "restricted_end_time": restrictedEndTime,
        "restricted_no_of_hours": restrictedNoOfHours,
        "maximum_participant": maximumParticipant,
        "is_active": isActive,
        "is_feature_course": isFeatureCourse,
        "is_display_on_website": isDisplayOnWebsite,
        "maximum_instructor": maximumInstructor,
        "notes": notes,
        "notes_en": notesEn,
        "course_banner": courseBanner,
        "cal_payment_type": calPaymentType,
        "price_per_item": pricePerItem,
        "is_archived": isArchived,
        "is_include_lunch_hour": isIncludeLunchHour,
        "is_payment_restriction": isPaymentRestriction,
        "is_customize": isCustomize,
        "google_form_link": googleFormLink,
        "embebd_code": embebdCode,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "global_level_id": globalLevelId,
        "minimum_participant": minimumParticipant,
        "activity_id": activityId,
        "min_age": minAge,
        "max_age": maxAge,
        "is_insurance": isInsurance,
        "no_of_seats": noOfSeats,
        "no_of_bookings": noOfBookings,
        "language_id": languageId,
        "color_code": colorCode,
        "level_code": levelCode,

      };
}



class Pivot {
  int? courseId;
  int? globalLevelId;

  Pivot({
    this.courseId,
    this.globalLevelId,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        courseId: json["course_id"],
        globalLevelId: json["global_level_id"],
      );

  Map<String, dynamic> toJson() => {
        "course_id": courseId,
        "global_level_id": globalLevelId,
      };
}

enum Type { P }

final typeValues = EnumValues({"P": Type.P});

class RestrictedScheduleDetail {
  int? id;
  int? courseId;
  dynamic groupId;
  String? session;
  int? time;
  int? noOfDays;
  dynamic noOfRestrictedDays;
  List<String>? selectedDays;
  dynamic fixedDateRange;
  List<String>? selectedPossibleWeekday;
  String? selectedTime;
  String? startTime;
  String? endTime;
  int? vatId;
  int? vatAmount;
  String? calPaymentType;
  dynamic totalPrice;
  int? price;
  dynamic pricePerDay;
  dynamic hoursPerDay;
  dynamic extraPersonCharge;
  dynamic freeUntil;
  dynamic isIncludeLunch;
  dynamic includeLunchPrice;
  bool? sameTimeForSelectedWeekdays;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic isFixDaytime;
  dynamic splitStartTime;
  dynamic splitEndTime;
  dynamic parentCourseRestrictedId;

  RestrictedScheduleDetail({
    this.id,
    this.courseId,
    this.groupId,
    this.session,
    this.time,
    this.noOfDays,
    this.noOfRestrictedDays,
    this.selectedDays,
    this.fixedDateRange,
    this.selectedPossibleWeekday,
    this.selectedTime,
    this.startTime,
    this.endTime,
    this.vatId,
    this.vatAmount,
    this.calPaymentType,
    this.totalPrice,
    this.price,
    this.pricePerDay,
    this.hoursPerDay,
    this.extraPersonCharge,
    this.freeUntil,
    this.isIncludeLunch,
    this.includeLunchPrice,
    this.sameTimeForSelectedWeekdays,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isFixDaytime,
    this.splitStartTime,
    this.splitEndTime,
    this.parentCourseRestrictedId,
  });

  factory RestrictedScheduleDetail.fromJson(Map<String, dynamic> json) =>
      RestrictedScheduleDetail(
        id: json["id"],
        courseId: json["course_id"],
        groupId: json["group_id"],
        session: json["session"],
        time: json["time"],
        noOfDays: json["no_of_days"],
        noOfRestrictedDays: json["no_of_restricted_days"],
        selectedDays: json["selected_days"] == null
            ? []
            : List<String>.from(json["selected_days"]!.map((x) => x)),
        fixedDateRange: json["fixed_date_range"],
        selectedPossibleWeekday: json["selected_possible_weekday"] == null
            ? []
            : List<String>.from(
                json["selected_possible_weekday"]!.map((x) => x)),
        selectedTime: json["selected_time"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        vatId: json["vat_id"],
        vatAmount: json["vat_amount"],
        calPaymentType: json["cal_payment_type"],
        totalPrice: json["total_price"],
        price: json["price"],
        pricePerDay: json["price_per_day"],
        hoursPerDay: json["hours_per_day"],
        extraPersonCharge: json["extra_person_charge"],
        freeUntil: json["free_until"],
        isIncludeLunch: json["is_include_lunch"],
        includeLunchPrice: json["include_lunch_price"],
        sameTimeForSelectedWeekdays: json["same_time_for_selected_weekdays"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        isFixDaytime: json["is_fix_daytime"],
        splitStartTime: json["split_start_time"],
        splitEndTime: json["split_end_time"],
        parentCourseRestrictedId: json["parent_course_restricted_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "course_id": courseId,
        "group_id": groupId,
        "session": session,
        "time": time,
        "no_of_days": noOfDays,
        "no_of_restricted_days": noOfRestrictedDays,
        "selected_days": selectedDays == null
            ? []
            : List<dynamic>.from(selectedDays!.map((x) => x)),
        "fixed_date_range": fixedDateRange,
        "selected_possible_weekday": selectedPossibleWeekday == null
            ? []
            : List<dynamic>.from(selectedPossibleWeekday!.map((x) => x)),
        "selected_time": selectedTime,
        "start_time": startTime,
        "end_time": endTime,
        "vat_id": vatId,
        "vat_amount": vatAmount,
        "cal_payment_type": calPaymentType,
        "total_price": totalPrice,
        "price": price,
        "price_per_day": pricePerDay,
        "hours_per_day": hoursPerDay,
        "extra_person_charge": extraPersonCharge,
        "free_until": freeUntil,
        "is_include_lunch": isIncludeLunch,
        "include_lunch_price": includeLunchPrice,
        "same_time_for_selected_weekdays": sameTimeForSelectedWeekdays,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "is_fix_daytime": isFixDaytime,
        "split_start_time": splitStartTime,
        "split_end_time": splitEndTime,
        "parent_course_restricted_id": parentCourseRestrictedId,
      };
}

class ResortDetails {
  int? id;
  String? name;
  String? address1;
  String? address2;
  String? city;
  String? zipcode;
  String? state;
  dynamic countryId;
  int? currencyId;
  String? image;
  dynamic thumbnil;
  String? companyName;
  String? registryNumber;
  String? tvaNumber;
  String? email;
  String? phone;
  String? initial;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? country;
  String? fromEmail;
  dynamic ginkoiaEmail;
  int? isSendEmailToGinkoia;
  int? isSendAllEmails;
  Currency? currency;

  ResortDetails({
    this.id,
    this.name,
    this.address1,
    this.address2,
    this.city,
    this.zipcode,
    this.state,
    this.countryId,
    this.currencyId,
    this.image,
    this.thumbnil,
    this.companyName,
    this.registryNumber,
    this.tvaNumber,
    this.email,
    this.phone,
    this.initial,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.country,
    this.fromEmail,
    this.ginkoiaEmail,
    this.isSendEmailToGinkoia,
    this.isSendAllEmails,
    this.currency,
  });

  factory ResortDetails.fromJson(Map<String, dynamic> json) => ResortDetails(
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        country: json["country"],
        fromEmail: json["from_email"],
        ginkoiaEmail: json["ginkoia_email"],
        isSendEmailToGinkoia: json["is_send_email_to_ginkoia"],
        isSendAllEmails: json["is_send_all_emails"],
        currency: json["currency"] == null
            ? null
            : Currency.fromJson(json["currency"]),
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
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "country": country,
        "from_email": fromEmail,
        "ginkoia_email": ginkoiaEmail,
        "is_send_email_to_ginkoia": isSendEmailToGinkoia,
        "is_send_all_emails": isSendAllEmails,
        "currency": currency?.toJson(),
      };
}

class Currency {
  int? id;
  String? name;
  String? code;
  String? symbole;
  int? isDefault;
  int? resortCount;

  Currency({
    this.id,
    this.name,
    this.code,
    this.symbole,
    this.isDefault,
    this.resortCount,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        symbole: json["symbole"],
        isDefault: json["is_default"],
        resortCount: json["resort_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "symbole": symbole,
        "is_default": isDefault,
        "resort_count": resortCount,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

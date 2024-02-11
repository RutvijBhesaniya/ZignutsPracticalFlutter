class CourseRequestModel {
  CourseRequestModel({
    this.page,
    this.perPage,
    this.dateType,
    this.isApp,
    this.resortId,
  });

  final int? page;
  final int? perPage;
  final String? dateType;
  final int? isApp;
  final int? resortId;
}

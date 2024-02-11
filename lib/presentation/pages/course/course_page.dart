import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/presentation/pages/course/bloc/course_cubit.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key, this.id}) : super(key: key);

  final int? id;

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  void initState() {
    fetchCourse();
    super.initState();
  }

  fetchCourse() {
    // Dependency.authenticationService.fetchCourses(CourseRequestModel(resortId: widget.id));
    context.read<CourseCubit>().courseDetails(1, 20, "Past", 1, widget.id ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CourseCubit, CourseState>(
      listener: (context, state) {
        if (state is CourseInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('No Courses Avaliable'),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 30,
                ),
              ),
            ],
            title: const Text('Zignuts Technolab'),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 20,
            ),
            child: BlocBuilder<CourseCubit, CourseState>(
              builder: (context, state) {
                if (state is CourseInProgress) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is CourseInSuccess) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "My Course",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      state.courseResponseModel.data != null &&
                              state.courseResponseModel.data!.isNotEmpty
                          ? SizedBox(
                              height: 150,
                              child: ListView.builder(
                                itemCount: 5,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                            top: 15,
                                            right: 15,
                                          ),
                                          color: AppColor.blue,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.3,
                                          child: Image.network(
                                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        state
                                            .courseResponseModel.data![index].id
                                            .toString(),
                                      )
                                    ],
                                  );
                                },
                              ),
                            )
                          : const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Data not avaliable",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  );
                } else if (state is CourseInFailure) {
                  return const Center(
                    child: Text(
                      "No Courses Avaliable",
                      style: TextStyle(
                        fontSize: 17,

                      ),
                    ),
                  );
                }

                return Center(child: CircularProgressIndicator());

                // return state is CourseInSuccess
                //     ? Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           const Text(
                //             "My Course",
                //             style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20,
                //             ),
                //           ),
                //           state.courseResponseModel.data != null &&
                //                   state.courseResponseModel.data!.isNotEmpty
                //               ? SizedBox(
                //                   height: 150,
                //                   child: ListView.builder(
                //                     itemCount: 5,
                //                     shrinkWrap: true,
                //                     scrollDirection: Axis.horizontal,
                //                     itemBuilder:
                //                         (BuildContext context, int index) {
                //                       return Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         children: [
                //                           Expanded(
                //                             child: Container(
                //                               margin: const EdgeInsets.only(
                //                                 top: 15,
                //                                 right: 15,
                //                               ),
                //                               color: AppColor.blue,
                //                               width: MediaQuery.of(context)
                //                                       .size
                //                                       .width /
                //                                   2.3,
                //                               child: Image.network(
                //                                 "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
                //                                 fit: BoxFit.fill,
                //                               ),
                //                             ),
                //                           ),
                //                           Text(
                //                             state.courseResponseModel
                //                                 .data![index].id
                //                                 .toString(),
                //                           )
                //                         ],
                //                       );
                //                     },
                //                   ),
                //                 )
                //               : const Center(
                //                   child: Padding(
                //                     padding: EdgeInsets.all(8.0),
                //                     child: Text(
                //                       "Data not avaliable",
                //                       style: TextStyle(
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 17,
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //           const SizedBox(
                //             height: 30,
                //           ),
                //         ],
                //       )
                //     :  Center(
                //         child: CircularProgressIndicator(),
                //       );
              },
            ),
          ),
        );
      },
    );
  }
}

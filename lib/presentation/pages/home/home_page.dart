import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/presentation/pages/course/bloc/course_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/course/course_page.dart';
import 'package:zignutspracticalflutter/presentation/pages/home/bloc/home_cubit.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    fetchResorts();
    super.initState();
  }

  fetchResorts() {
    Dependency.authenticationService.fetchResorts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _upperLayer(context),
          const SizedBox(
            height: 50,
          ),
          _downLayer()
        ],
      ),
    );
  }

  _downLayer() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'OUR RESORTS',
              style: TextStyle(
                color: AppColor.blue,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state is HomeInSuccess
                      ? GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 6.0,
                          children: List.generate(
                            state.homeResponseModel.data.resort.length,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                          create: (context) => CourseCubit(),
                                          child: CourseDetails(
                                            id: state.homeResponseModel.data
                                                .resort[index].id,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: FadeInImage.assetNetwork(
                                    fit: BoxFit.fill,
                                    image: state.homeResponseModel.data
                                        .resort[index].image,
                                    placeholder:
                                        'assets/images/background_image.png',
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  _upperLayer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ///background image
          Container(
            color: AppColor.blue,
          ),

          ///title text
          Positioned(
            top: MediaQuery.of(context).size.height / 6.3,
            child: Text(
              "OXYGENE",
              style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),

          ///sub title text
          Positioned(
            top: MediaQuery.of(context).size.height / 4.4,
            child: Text(
              "SKI - SNOWBOARD - BIKE",
              style: TextStyle(
                color: AppColor.white,
                fontSize: 15,
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2.8,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Text(
                "Resort and Weather Details",
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

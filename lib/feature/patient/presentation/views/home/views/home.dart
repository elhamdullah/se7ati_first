// feature/patient/presentation/views/home/views/home.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/core/functions/navigation.dart';
import 'package:flutter_application/core/utils/colors.dart';
import 'package:flutter_application/core/utils/text_style.dart';
import 'package:flutter_application/feature/patient/presentation/views/home/widget/home_search_screen.dart';
import 'package:flutter_application/feature/patient/presentation/views/home/widget/specailize_banner.dart';
import 'package:flutter_application/feature/patient/presentation/views/home/widget/top_rated_list.dart';
import 'package:gap/gap.dart';

class PatientHome extends StatefulWidget {
  const PatientHome({super.key});

  @override
  State<PatientHome> createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  final TextEditingController _doctorName = TextEditingController();
  User? user;

  Future<void> _getUser() async {
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              splashRadius: 20,
              icon: const Icon(Icons.notifications_active,
                  color: AppColors.blackColor),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: Text(
          'صــــــحّـتــي',
          style: getTitleStyle(color: AppColors.blackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: 'مرحبا، ',
                    style: getBodyStyle(fontSize: 18),
                  ),
                  TextSpan(
                    text: user?.displayName,
                    style: getTitleStyle(),
                  ),
                ],
              )),
              const Gap(10),
              Text("احجز الآن وكن جزءًا من رحلتك الصحية.",
                  style:
                      getTitleStyle(color: AppColors.blackColor, fontSize: 25)),
              const SizedBox(height: 15),

              // --------------- Search Bar --------------------------
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      blurRadius: 15,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  controller: _doctorName,
                  cursorColor: AppColors.blueColor,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    fillColor: Colors.blue[50],
                    border: InputBorder.none,
                    hintStyle: getTitleStyle(
                      color: AppColors.grayColor,
                    ),
                    filled: true,
                    hintText: 'ابحث عن دكتور',
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        color: AppColors.blueColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: IconButton(
                        iconSize: 20,
                        splashRadius: 20,
                        color: Colors.white,
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          if (_doctorName.text.isNotEmpty) {
                            push(context,
                                HomeSearchScreen(searchKey: _doctorName.text));
                          }
                        },
                      ),
                    ),
                  ),
                  style: getBodyStyle(),
                  onFieldSubmitted: (String value) {
                    if (_doctorName.text.isNotEmpty) {
                      push(context,
                          HomeSearchScreen(searchKey: _doctorName.text));
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // ----------------  SpecialistsWidget --------------------,

              const SpecialistsBanner(),
              const SizedBox(
                height: 10,
              ),

              // ----------------  Top Rated --------------------,
              Text(
                "الأعلي تقييماً",
                textAlign: TextAlign.center,
                style: getTitleStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const TopRatedList(),
            ],
          ),
        ),
      ),
    );
  }
}
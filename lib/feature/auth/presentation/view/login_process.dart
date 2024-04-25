import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:se7ty_app/core/utils/app_colors.dart';
import 'package:se7ty_app/feature/auth/data/specialization_list.dart';

class LoginProcess extends StatefulWidget {
  const LoginProcess({super.key});

  @override
  State<LoginProcess> createState() => _LoginProcessState();
}

String specialization = specializationList[0];

class _LoginProcessState extends State<LoginProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.color1,
          title: const Text(' إكمال عملية التسجيل '),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
              child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    // backgroundColor: AppColors.lightBg,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assetName'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        size: 20,
                        // color: AppColors.color1,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('التخصص '),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.color2.withOpacity(0.2),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  value: specialization,
                  icon: Icon(
                    Icons.arrow_circle_down_outlined,
                    color: AppColors.color1,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      specialization = newValue ?? specializationList[0];
                    });
                  },
                  items: specializationList.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('نبذة تعريفية'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 4,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: AppColors.color2.withOpacity(0.2),
                        filled: true,
                        hintText:
                            'سجل المعلومات الطبية العامة مثل تعليمك الأكاديمي وخبراتك السابقة...')),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'عنوان العيادة',
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: AppColors.color2.withOpacity(0.2),
                        filled: true,
                        hintText: '5 شارع مصدق - الدقي - الجيزة')),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(children: [
                  Text('ساعات العمل من '),
                  Gap(30),
                  Text('الي'),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15)),
                              fillColor: AppColors.color2.withOpacity(0.2),
                              filled: true,
                              hintText:
                                  'سجل المعلومات الطبية العامة مثل تعليمك الأكاديمي وخبراتك السابقة...')),
                    ),
                    const Gap(30),
                    Expanded(
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(15)),
                              fillColor: AppColors.color2.withOpacity(0.2),
                              filled: true,
                              hintText:
                                  'سجل المعلومات الطبية العامة مثل تعليمك الأكاديمي وخبراتك السابقة...')),
                    )
                  ],
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(15),
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //             borderSide: BorderSide.none,
              //             borderRadius: BorderRadius.circular(15)),
              //         fillColor: AppColors.color2.withOpacity(0.2),
              //         filled: true),
              //   ),
              // )
            ],
          )),
        ));
  }
}

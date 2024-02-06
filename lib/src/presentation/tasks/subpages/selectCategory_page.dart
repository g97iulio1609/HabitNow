import 'package:flutter/material.dart';
import 'package:habit_now/src/utils/const.dart';
import 'package:habit_now/src/utils/extentions.dart';
import 'package:habit_now/src/utils/models/task_model.dart';

class SelectCategoryPage extends StatelessWidget {
  const SelectCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List categories = [
      CategoryModel(
        color: const Color.fromARGB(255, 255, 89, 0),
        icon: Icons.block,
        name: 'Quit a bad habit',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 167, 14, 60),
        icon: Icons.brush,
        name: 'Art',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 220, 21, 81),
        icon: Icons.timer_outlined,
        name: 'Task',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 159, 4, 144),
        icon: Icons.self_improvement,
        name: 'Meditation',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 53, 4, 159),
        icon: Icons.school,
        name: 'Study',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 4, 105, 159),
        icon: Icons.directions_bike,
        name: 'Sports',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 4, 159, 133),
        icon: Icons.local_activity,
        name: 'Entertainment',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 159, 4, 144),
        icon: Icons.speaker_notes,
        name: 'Social',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 4, 159, 45),
        icon: Icons.speaker_notes,
        name: 'Social',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 100, 159, 4),
        icon: Icons.attach_money_outlined,
        name: 'Finance',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 159, 4, 4),
        icon: Icons.add,
        name: 'Health',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 159, 4, 144),
        icon: Icons.work_outlined,
        name: 'Work',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 159, 100, 4),
        icon: Icons.restaurant_menu,
        name: 'Nurtrition',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 4, 32, 159),
        icon: Icons.home,
        name: 'Home',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 4, 159, 51),
        icon: Icons.filter_hdr,
        name: 'Outdoors',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 159, 4, 14),
        icon: Icons.energy_savings_leaf_rounded,
        name: 'Energy',
      ),
      CategoryModel(
        color: const Color.fromARGB(255, 118, 159, 4),
        icon: Icons.category,
        name: 'Other',
      ),
    ];

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: context.height * 0.07),
                  Text(
                    "Select a category",
                    style: TextStyle(
                      color: AppColors.kpurpleOn,
                      fontSize: context.fontSize * 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: context.height * 0.03),
                  Wrap(children: [
                    ...categories.map((category) =>
                        SelectCategoryWrapTile(categoryModel: category)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: context.height * 0.007,
                        horizontal: context.width * 0.015,
                      ),
                      child: Material(
                        borderRadius:
                            BorderRadius.circular(context.width * 0.02),
                        color: const Color.fromARGB(255, 33, 33, 33),
                        child: InkWell(
                          onTap: () {},
                          borderRadius:
                              BorderRadius.circular(context.width * 0.02),
                          child: Container(
                            height: context.height * 0.075,
                            width: context.width / 2 - context.width * 0.03,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(context.width * 0.02),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: context.width * 0.03),
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: (context.width / 2 -
                                                context.width * 0.04) *
                                            0.61,
                                        child: Text(
                                          "Create Category",
                                          style: TextStyle(
                                            color: Colors.white,
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: context.fontSize / 1.25,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: (context.width / 2 -
                                                context.width * 0.04) *
                                            0.61,
                                        child: Text(
                                          "3 available",
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: context.fontSize / 1.25,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.add_circle_outline_sharp,
                                    color:
                                        const Color.fromARGB(255, 95, 95, 95),
                                    size: context.fontSize * 2.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Add more widgets as needed
                  ]),
                  SizedBox(
                    height: context.height * 0.1,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.infinity,
                height: context.height * 0.08,
                decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Colors.grey, width: 0.3)),
                    color: AppColors.kBackgroundColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: context.width / 10,
                    ),
                    Material(
                      color: AppColors.kBackgroundColor,
                      child: InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: context.height * 0.008),
                          height: context.height * 0.04,
                          width: context.width / 5,
                          child: Text(
                            "CANCEL",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: context.fontSize),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.width / 10 * 1.4,
                    ),
                    const Row(
                      children: [
                        ProgressBullet(
                          isSelected: false,
                        ),
                        ProgressBullet(
                          isSelected: false,
                        ),
                        ProgressBullet(
                          isSelected: false,
                        ),
                        ProgressBullet(
                          isSelected: false,
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class ProgressBullet extends StatelessWidget {
  const ProgressBullet({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: context.height * 0.01,
      height: context.height * 0.01,
      decoration: BoxDecoration(
          color: !isSelected ? AppColors.kBackgroundColor : Colors.red,
          border: Border.all(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(500)),
    );
  }
}

class SelectCategoryWrapTile extends StatelessWidget {
  const SelectCategoryWrapTile({
    Key? key,
    required this.categoryModel,
  }) : super(key: key);

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.height * 0.007,
        horizontal: context.width * 0.015,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(context.width * 0.02),
        color: const Color.fromARGB(255, 33, 33, 33),
        child: InkWell(
          onTap: () {
            context.pushNamed("/recurring_task/evaluate_progress");
          },
          borderRadius: BorderRadius.circular(context.width * 0.02),
          child: Container(
            height: context.height * 0.075,
            width: context.width / 2 - context.width * 0.03,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.width * 0.02),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
              child: Row(
                children: [
                  SizedBox(
                    width: (context.width / 2 - context.width * 0.04) * 0.61,
                    child: Text(
                      categoryModel.name,
                      style: TextStyle(
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                        fontSize: context.fontSize / 1.25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: context.height * 0.05,
                    width: context.height * 0.05,
                    decoration: BoxDecoration(
                      color: categoryModel.color,
                      borderRadius: BorderRadius.circular(context.width * 0.03),
                    ),
                    child: Icon(categoryModel.icon),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

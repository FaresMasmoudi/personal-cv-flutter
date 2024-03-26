import 'package:flutter/material.dart';
import 'package:personalcv/widgets/project_card.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // work projects title
            const Text(
              "Work projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),

            const SizedBox(height: 50),
            // work project cards
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < workProjectUtils.length; i++)
                    ProjectCardWidget(
                      project: workProjectUtils[i],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            // work projects title
            const Text(
              "Hobby projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),

            const SizedBox(height: 50),
            // hobby project cards
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < hobbyProjectUtils.length; i++)
                    ProjectCardWidget(
                      project: hobbyProjectUtils[i],
                    ),
                ],
              ),
            )
          ],
        ));
  }
}

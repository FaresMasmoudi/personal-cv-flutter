import 'package:flutter/material.dart';
import 'package:personalcv/utils/project_utils.dart';
import 'package:personalcv/widgets/web_view_screen.dart';

import '../constants/colors.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 350,
      width: 260,
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // project image
          Image.asset(project.image,
              height: 140, width: 260, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          //Subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                  fontSize: 12, color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Voir sur Github',
                  style: TextStyle(
                      color: CustomColor.yellowSecondary, fontSize: 10),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewScreen(url: project.githubLink!),
                      ),
                    );
                  },
                  child: Image.asset('assets/github.png', width: 19),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

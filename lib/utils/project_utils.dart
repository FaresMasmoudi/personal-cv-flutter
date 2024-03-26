class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
  });
}

// Mes projets
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'English Brain Craft',
    subtitle:
        'This is an English learning app for students to learn English through various methods.',
    githubLink:
        'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
  ),
  ProjectUtils(
    image: 'assets/projects/w02.png',
    title: 'Online Shop Web App',
    subtitle:
        'This is a responsive online shop web application for car engine oil.',
    githubLink: 'https://www.elo.best',
  ),
  ProjectUtils(
    image: 'assets/projects/w03.jpeg',
    title: 'Advertisement Management System',
    subtitle:
        'This is an Advertisement Management System to buy, sell, and manage advertisement.',
    githubLink: 'https://www.externally.unavailable.project',
  ),
];

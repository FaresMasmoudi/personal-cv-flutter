class Project {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;

  Project({
    required this.image,
    required this.title,
    required this.subtitle,
    this.githubLink,
  });
}

// Mes projets
List<Project> mesProjets = [
  Project(
    image: 'assets/projects/parcinfo.png',
    title: 'Gestion de Parc Informatique',
    subtitle:
        'Projet Fullstack pour la gestion de parc informatique d\'une entreprise.',
    githubLink: 'https://github.com/FaresMasmoudi/parc-informatique-angular',
  ),
  Project(
    image: 'assets/projects/huileolive.png',
    title: 'Gestion de chaine de production d\'huile d\'olive',
    subtitle:
        'Projet Spring Boot + Angular pour la gestion de tracabilité d\'huile d\'olive.',
    githubLink: 'https://github.com/FaresMasmoudi/olivefront',
  ),
  Project(
    image: 'assets/projects/labo.png',
    title: 'Gestion de laboratoire',
    subtitle: 'Projet angular pour la gestion de laboratoire de recherche.',
    githubLink: 'https://github.com/FaresMasmoudi/lab-management-front',
  ),
  Project(
    image: 'assets/projects/djagora.png',
    title: 'Djagora Talents',
    subtitle:
        'Interface web pour les talents de Djagora pour les aider à trouver des opportunités de travail.',
    githubLink: 'https://github.com/FaresMasmoudi/DjagoraSkills',
  ),
];

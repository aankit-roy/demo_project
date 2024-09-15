import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:demo_project/model/project_model.dart';

// ProjectNotifier that extends StateNotifier to manage the project list and search query
class ProjectNotifier extends StateNotifier<List<ProjectModel>> {
  ProjectNotifier() : super(_initialProjects);

  // Initial list of projects
  static final List<ProjectModel> _initialProjects = [
    ProjectModel(
      image: 'assets/images/Rectangle1.png',
      title: 'Kemampuan Merangkum Tulisan',
      subtitle: 'BAHASA SUNDA',
      sublabel: 'Oleh Al-Baiqi Samaan',
      grade: 'A',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle2.png',
      title: 'Pemahaman Struktur Kalimat',
      subtitle: 'BAHASA INDONESIA',
      sublabel: 'Oleh Sarah Mahmud',
      grade: 'B+',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle3.png',
      title: 'Analisis Karya Sastra',
      subtitle: 'BAHASA INGGRIS',
      sublabel: 'Oleh Dimas Aditya',
      grade: 'A-',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle4.png',
      title: 'Penggunaan Tata Bahasa',
      subtitle: 'BAHASA JAWA',
      sublabel: 'Oleh Fajar Hidayat',
      grade: 'B',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle5.png',
      title: 'Pemahaman Konteks Budaya',
      subtitle: 'BAHASA JEPANG',
      sublabel: 'Oleh Natsumi Tanaka',
      grade: 'A',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle2.png',
      title: 'Pemahaman Struktur Kalimat',
      subtitle: 'BAHASA INDONESIA',
      sublabel: 'Oleh Sarah Mahmud',
      grade: 'B+',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle3.png',
      title: 'Analisis Karya Sastra',
      subtitle: 'BAHASA INGGRIS',
      sublabel: 'Oleh Dimas Aditya',
      grade: 'A-',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle4.png',
      title: 'Penggunaan Tata Bahasa',
      subtitle: 'BAHASA JAWA',
      sublabel: 'Oleh Fajar Hidayat',
      grade: 'B',
    ),
    ProjectModel(
      image: 'assets/images/Rectangle5.png',
      title: 'Pemahaman Konteks Budaya',
      subtitle: 'BAHASA JEPANG',
      sublabel: 'Oleh Natsumi Tanaka',
      grade: 'A',
    ),
  ];

  // Method to filter projects based on search query
  void filterProjects(String query) {
    if (query.isEmpty) {
      state = _initialProjects;
    } else {
      state = _initialProjects
          .where((project) =>
          project.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}

// Create a provider for ProjectNotifier
final projectProvider =
StateNotifierProvider<ProjectNotifier, List<ProjectModel>>((ref) {
  return ProjectNotifier();
});

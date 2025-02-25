// -------------
//  import LIBRARIES
import 'package:go_router/go_router.dart';

//  import FILES
import '../features/about/presentation/about_page.dart';
import '../features/blog/presentation/blog_page.dart';
import '../features/course/presentation/courses_page.dart';
import '../features/home/presentation/home_page.dart';

// PARTS
// PROVIDERS
// -------------

class Routes {
  static const String home = '/';
  static const String courses = '/courses';
  static const String blog = '/blog';
  static const String about = '/about';
}

class AppRoute {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: HomePage()),
      ), // GoRoute
      GoRoute(
        path: Routes.courses,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: CoursesPage()),
      ), // GoRoute
      GoRoute(
        path: Routes.blog,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: BlogPage()),
      ), // GoRoute
      GoRoute(
        path: Routes.about,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: AboutPage()),
      ), // GoRoute
    ],
  ); // GoRouter
}

// class AppRoute {
//   static final router = GoRouter(routes: [
//     GoRoute(
//       path: Routes.home,
//       builder: (context, state) => const HomePage(),
//     ), // GoRoute
//     GoRoute(
//       path: Routes.courses,
//       builder: (context, state) => const CoursesPage(),
//     ), // GoRoute
//     GoRoute(
//       path: Routes.blog,
//       builder: (context, state) => const BlogPage(),
//     ), // GoRoute
//     GoRoute(
//       path: Routes.about,
//       builder: (context, state) => const AboutPage(),
//     ), // GoRoute
//   ]); // GoRouter
// }

import 'package:auto_route/auto_route.dart';

import '../pages/bottomNavHome/bottomNavHome.dart';
import '../pages/genre/genre.dart';
import '../pages/home/home.dart';
import '../pages/location/location.dart';
import '../pages/login/login.dart';
import '../pages/mymusic/mymusic.dart';
import '../pages/splash/splash.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Splash, name: 'SplashRouter', initial: true),
    AutoRoute(
      page: BottomNavHome,
      name: 'BottomNavHomeRouter',
      children: [
        AutoRoute(page: HomePage, name: 'HomeRouter'),
        AutoRoute(page: MyMusic, name: 'MyMusicRouter'),
        AutoRoute(page: Location, name: 'LocationRouter'),
      ],
    ),
    AutoRoute(page: Login, name: 'LoginRouter'),
    AutoRoute(page: Genre, name: 'GenreRouter'),
  ],
)
// extend the generated private router
class $MusicRouter {}

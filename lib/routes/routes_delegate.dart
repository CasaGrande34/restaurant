//dependencies
import 'package:fluro/fluro.dart';

import 'handlers_router.dart';

class RoutesDelegateFluro {
  //Routes Strings
  static const login = '/auth/login';
  static const register = '/auth/register';
  static const homeRol = '/';
  static const registerTable = '/registerTable';
  static const listTable = '/listTable';
  static const route404 = '/404';
  static const clientOptions = '/clientOptions';

  //Objects
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      register,
      handler: registerHandler,
    );

    router.define(
      login,
      handler: loginHandler,
    );

    router.define(
      homeRol,
      handler: homeRolHandler,
    );
    router.define(
      clientOptions,
      handler: clientOptionsHandler,
    );
    router.define(
      registerTable,
      handler: registerTableHandler,
    );
    router.define(
      listTable,
      handler: listTableHandler,
    );

    router.notFoundHandler = view404Handler;
  }
}

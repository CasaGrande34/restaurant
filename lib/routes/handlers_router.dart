import 'package:fluro/fluro.dart';
import '../UI/login_and_register/login_and_register_exports.dart';
import '../UI/register_table_layout/register_layout.dart';
import '../UI/ui_exports.dart';

final Handler registerTableHandler = Handler(
  handlerFunc: ((context, parameters) {
    //Logica para el token
    return const RegisterTableLayout();
  }),
);
final Handler homeRolHandler = Handler(
  handlerFunc: ((context, parameters) {
    //Logica para el token
    return const SelectRolView();
  }),
);

final Handler loginHandler = Handler(
  handlerFunc: ((context, parameters) {
    return const LoginLayout();
  }),
);
// final Handler loginHandler = Handler(
//   handlerFunc: ((context, parameters) {
//     final authProvider = Provider.of<AuthProvider>(context!);
//     if (authProvider.status == AuthStatus.checking) {
//       return const CircularProgressIndicator();
//     }
//     if (authProvider.status == AuthStatus.noAuthenticated) {
//       return const LoginLayout();
//     }
//     return const SelectRolView();
//   }),
// );

final Handler registerHandler = Handler(
  handlerFunc: ((context, parameters) {
    return const RegisterLayout();
  }),
);
// final Handler registerHandler = Handler(
//   handlerFunc: ((context, parameters) {
//     final authProvider = Provider.of<AuthProvider>(context!);
//     if (authProvider.status == AuthStatus.checking) {
//       return const CircularProgressIndicator();
//     }
//     if (authProvider.status == AuthStatus.noAuthenticated) {
//       return const RegisterLayout();
//     }
//     return const SelectRolView();
//   }),
// );

final Handler clientOptionsHandler = Handler(
  handlerFunc: ((context, parameters) {
    //Logica para el token
    return const ClientOptions();
  }),
);

final Handler listTableHandler = Handler(
  handlerFunc: ((context, parameters) {
    //Logica para el token
    return const ListTableLayout();
  }),
);

final Handler view404Handler = Handler(
  handlerFunc: ((context, parameters) => const View404()),
);

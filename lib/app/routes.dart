import 'package:ecommerce/Homepage/Homepage.dart';
import 'package:ecommerce/Homepage/cart.dart';
import 'package:ecommerce/Homepage/productdetails.dart';
import 'package:ecommerce/app/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

class Routes {
  final log = Logger();

  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteNames.homepage,
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const Homepage();
        },
      ),
      GoRoute(
        name: RouteNames.productdetail,
        path: "/productdetail",
        builder: (BuildContext context, GoRouterState state) {
          return const ProductsMobileviewDetails();
        },
      ),
      GoRoute(
        name: RouteNames.cartpage,
        path: "/cartpage",
        builder: (BuildContext context, GoRouterState state) {
          return const Cartpage();
        },
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      //   final log = Logger();
      //   final bool signedIn = context.read<LoginBloc>().state.status == LoginStatus.loggedIn;
      //   log.d("Routes:::Redirect:Is LoggedIn: $signedIn");
      //   final bool signingIn = state.matchedLocation == '/login';
      //   log.d("Routes:::Redirect:MatchedLocation: ${state.matchedLocation}");
      //   if (state.matchedLocation == '/' && !signedIn) {
      //     return null;
      //   }
      //   if (!signedIn && !signingIn) {
      //     return '/login';
      //   } else if (signedIn && signingIn) {
      //     return '/base';
      //   }
      //   return null;
      // },
      // debugLogDiagnostics: true,
      // errorBuilder: (context, state) {
      //   return FileNotFound(message: "${state.error?.message}");
    },
    // changes on the listenable will cause the router to refresh it's route
    // refreshListenable: GoRouterRefreshStream(_loginBloc.stream),
  );
}

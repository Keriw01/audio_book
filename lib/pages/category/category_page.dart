import 'package:auto_route/auto_route.dart';
// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/blocs/auth/auth_bloc.dart';
import 'package:testproject/generated/l10n.dart';
// import 'package:testproject/models/user.dart';
// import 'package:testproject/repositories/api/api_client.dart';
// import 'package:testproject/routes/app_router.gr.dart';
// import 'package:testproject/service/locator.dart';
import 'package:testproject/styles/colors.dart';

@AutoRoute()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.categoryPageTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final authBloc = context.read<AuthBloc>();
            authBloc.logOut();
            // authBloc.refreshTokenIfNeeded();
            // print(authBloc.state.tokens!.accessToken);
            // User user = await getIt<ApiClient>()
            //     .getUserId(accessToken: authBloc.state.tokens!.accessToken);
            // print(user.userId);
            // context.router.replace(LoginRoute());
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.fromLTRB(75, 10, 75, 10),
            ),
            backgroundColor: MaterialStateProperty.all(seedColor),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
          ),
          child: Text(
            S.of(context).logOut,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/blocs/auth/auth_bloc.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/pages/books/cubit/favorites_cubit.dart';
import 'package:testproject/styles/colors.dart';

@AutoRoute()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final favoritesCubit = context.read<FavoritesCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.profilePageTitle),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(S.of(context).infoAboutUser),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(S.of(context).email + authBloc.state.currentUser!.email),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  S.of(context).favoriteCount +
                      favoritesCubit.getCountFavorites().toString(),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                onPressed: () async {
                  authBloc.logOut();
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
            )
          ],
        ),
      ),
    );
  }
}

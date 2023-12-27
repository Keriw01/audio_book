import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/blocs/auth/auth_bloc.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/routes/app_router.gr.dart';
import 'package:testproject/styles/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@AutoRoute()
class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Text(
                S.of(context).audioBook,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: SvgPicture.asset('assets/images/login_logo.svg'),
              ),
              const SizedBox(height: 20),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55, 0, 55, 10),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value != null) {
                            if (value.contains('@')) {
                              return null;
                            }
                            return S.of(context).enterValidEmail;
                          }
                          return null;
                        },
                        cursorColor: seedColor,
                        style: const TextStyle(
                          color: blackColor,
                          fontFamily: 'OpenSans',
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: whiteColor,
                          errorBorder: underlineInputBorder,
                          focusedErrorBorder: underlineInputBorder,
                          focusedBorder: underlineInputBorder,
                          enabledBorder: underlineInputBorder,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: seedColor,
                            size: 22,
                          ),
                          labelText: S.of(context).enterEmail,
                          labelStyle: const TextStyle(
                            color: blackColor,
                            fontSize: 14,
                          ),
                          floatingLabelStyle: const TextStyle(
                            color: blackColor,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(55, 10, 55, 10),
                      child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return S.of(context).requiredPassword;
                          }
                          if (value.trim().length < 8) {
                            return S.of(context).enterValidPassword;
                          }
                          return null;
                        },
                        cursorColor: seedColor,
                        style: const TextStyle(
                          color: blackColor,
                          fontFamily: 'OpenSans',
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: whiteColor,
                          errorBorder: underlineInputBorder,
                          focusedErrorBorder: underlineInputBorder,
                          focusedBorder: underlineInputBorder,
                          enabledBorder: underlineInputBorder,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: seedColor,
                            size: 22,
                          ),
                          labelText: S.of(context).enterPassword,
                          labelStyle: const TextStyle(
                            color: blackColor,
                            fontSize: 14,
                          ),
                          floatingLabelStyle: const TextStyle(
                            color: blackColor,
                            fontSize: 12,
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthBloc>().register(
                                  emailController.text.trim(),
                                  passwordController.text.trim(),
                                );
                          }
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
                          overlayColor:
                              const MaterialStatePropertyAll(primaryColor),
                        ),
                        child: Text(
                          S.of(context).register,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                      onPressed: () => context.router.replace(LoginRoute()),
                      child: Text(
                        S.of(context).loginWhenHadAccount,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: blackColor),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 70,
                    color: primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      S.of(context).other,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: blackColor),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 70,
                    color: primaryColor,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      color: seedColor,
                    ),
                    splashRadius: 0.1,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.facebook,
                      color: seedColor,
                    ),
                    splashRadius: 0.1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const UnderlineInputBorder underlineInputBorder = UnderlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20)),
  borderSide: BorderSide(
    width: 2,
    color: shadowColor,
  ),
);

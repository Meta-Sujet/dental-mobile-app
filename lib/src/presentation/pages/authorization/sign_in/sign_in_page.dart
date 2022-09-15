import 'package:auto_route/auto_route.dart';
import 'package:dental_mobile_app/src/presentation/navigation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection_config.dart';
import '../../../model/failures/name_failure.dart';
import '../../../model/failures/password_failure.dart';
import 'state/sign_in_page_cubit.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInPageCubit>(
      create: (BuildContext context) => getIt<SignInPageCubit>(),
      child: const Scaffold(
        body: SafeArea(
          top: false,
          // bottom: false,
          child: SignInForm(),
        ),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints.tight(
          Size(
            mediaQueryData.size.width,
            mediaQueryData.size.height -
                mediaQueryData.padding.top -
                mediaQueryData.padding.bottom,
          ),
        ),
        child: BlocBuilder<SignInPageCubit, SignInPageState>(
          buildWhen: (SignInPageState previous, SignInPageState current) =>
              previous.validateForm != current.validateForm,
          builder: (_, SignInPageState state) {
            return Form(
              autovalidateMode: state.validateForm
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    const Text(
                      'წარმატებულ სამუშაო დღეს გისურვებთ!',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 58),
                    const Text(
                      'მომხმარებელი',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF78818F),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'ჩაწერე',
                        //jane
                        hintStyle:
                            const TextStyle(color: const Color(0xFFBCC3CF)),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFEDEFF4),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      validator: (String? value) {
                        return context
                            .read<SignInPageCubit>()
                            .state
                            .name
                            .value
                            .fold(
                              (NameFailure l) => l.when(
                                  empty: () => 'EMPTY!',
                                  tooLong: () => 'TO LONG',
                                  tooShort: () => 'Too short'),
                              (String r) => null,
                            );
                      },
                      onChanged: context.read<SignInPageCubit>().onNameChanged,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'პაროლი',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF78818F),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'ჩაწერე',
                        //jane1234
                      ),
                      validator: (String? value) {
                        return context
                            .read<SignInPageCubit>()
                            .state
                            .password
                            .value
                            .fold(
                              (PasswordFailure l) => l.when(
                                empty: () => 'EMPTY',
                                tooLong: () => 'TO0 LONG',
                                tooShort: () => 'TOO SHORT',
                              ),
                              (String r) => null,
                            );
                      },
                      onChanged:
                          context.read<SignInPageCubit>().onPasswordChanged,
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          context.router.push(const ForgotPasswordRoute());
                        },
                        child: Text(
                          'დაგავიწყდა პაროლი?',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 43),
                    ElevatedButton(
                      onPressed: context.read<SignInPageCubit>().onLoginPressed,
                      child: const Text('შესვლა'),
                    ),
                    const Spacer(),
                    const Divider(),
                    const SizedBox(height: 20),
                    const Text(
                      'ნებისმიერი კითხვის ან/და პრობლემის შემთხვევაში, დაუკავშირდით ჩვენს მომხმარებელთა ზრუნვის დეპარტამენტს: 0322500290',
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

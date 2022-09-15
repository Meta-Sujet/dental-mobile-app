import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection_config.dart';
import '../../../model/failures/password_failure.dart';
import '../../../model/failures/repeated_pass.dart';
import 'state/new_password_page_cubit.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewPasswordPageCubit>(
      create: (BuildContext context) => getIt<NewPasswordPageCubit>(),
      child: Scaffold(
        body: SafeArea(
          top: false,
          bottom: false,
          child: NewPassForm(),
        ),
      ),
    );
  }
}

class NewPassForm extends StatelessWidget {
  const NewPassForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return BlocListener<NewPasswordPageCubit, NewPasswordPageState>(
      listener: (context, state) {
        if (state.success) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Container(
                width: 335,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Color(0xFF52C41A),
                      size: 28,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'გილოცავთ',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'თქვენი პაროლი წარმატებით შეიცვალა',
                      style: TextStyle(fontSize: 14, color: Color(0xFF78818F)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        // TODO: implement listener
      },
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(
            Size(
              mediaQueryData.size.width,
              mediaQueryData.size.height -
                  mediaQueryData.padding.top -
                  mediaQueryData.padding.bottom,
            ),
          ),
          child: BlocBuilder<NewPasswordPageCubit, NewPasswordPageState>(
            builder: (BuildContext context, NewPasswordPageState state) {
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
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xFF78818F),
                                ),
                                Text(
                                  'უკან',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF78818F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text('პაროლის აღდგენა'),
                      const SizedBox(height: 58),
                      const Text(
                        'ახალი პაროლი',
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
                        ),
                        validator: (String? value) {
                          return context
                              .read<NewPasswordPageCubit>()
                              .state
                              .password
                              .value
                              .fold(
                                (PasswordFailure l) => l.when(
                                  empty: () => 'EMPTY',
                                  tooLong: () => 'too long',
                                  tooShort: () => 'too short',
                                ),
                                (String r) => null,
                              );
                        },
                        onChanged: (String a) {
                          context.read<NewPasswordPageCubit>().passChanged(a);
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'გაიმეორე პაროლი',
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
                        ),
                        validator: (String? value) {
                          return context
                              .read<NewPasswordPageCubit>()
                              .state
                              .repeatedPassword
                              .value
                              .fold(
                                (RepeatedPasswordFailure l) => l.when(
                                  empty: () => 'EMPTY',
                                  doesNotMatch: () => 'doesnt match',
                                ),
                                (String r) => null,
                              );
                        },
                        onChanged: (String a) {
                          context
                              .read<NewPasswordPageCubit>()
                              .repeatedPassChanged(a);
                        },
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(height: 43),
                      ElevatedButton(
                        onPressed: () {
                          context.read<NewPasswordPageCubit>().buttonPressed();
                        },
                        child: const Text('შესვლა'),
                      ),
                      const Spacer(),
                      const Divider(),
                      const SizedBox(height: 20),
                      const Text(
                        'ნებისმიერი კითხვის ან/და პრობლემის შემთხვევაში, დაუკავშირდით ჩვენს მომხმარებელთა ზრუნვის დეპარტამენტს: 0322500290',
                      ),
                      const SizedBox(height: 4)
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

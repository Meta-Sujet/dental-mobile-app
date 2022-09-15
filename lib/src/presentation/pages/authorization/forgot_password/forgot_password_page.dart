import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection_config.dart';
import '../../../model/failures/phone_number_failure.dart';
import 'state/forgot_password_page_cubit.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final CustomColors? theme = Theme.of(context).extension<CustomColors>();
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return BlocProvider<ForgotPasswordPageCubit>(
      create: (BuildContext context) => getIt<ForgotPasswordPageCubit>(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(mediaQueryData.size),
            child: SafeArea(
              child: Builder(
                builder: (BuildContext context) => Center(
                  child: BlocBuilder<ForgotPasswordPageCubit,
                      ForgotPasswordPageState>(
                    builder:
                        (BuildContext context, ForgotPasswordPageState state) {
                      return Form(
                        autovalidateMode: state.validateForm
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: SizedBox(
                          width: 335,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 75),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'პაროლის აღდგენა',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF262626)),
                                      ),
                                      SizedBox(height: 20),
                                      const Text(
                                        'გთხოვთ ჩაწეროთ ტელეფონის ნომერი რომელზეც გამოგეგზავნებათ კოდი',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF262626),
                                        ),
                                      ),
                                      SizedBox(height: 50),
                                      Text(
                                        'ტელეფონის ნომერი',
                                        style: TextStyle(
                                          fontSize: 14,
                                          // color: theme!.secondaryElement,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'ჩაწერე',
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                        validator: (String? value) {
                                          return context
                                              .read<ForgotPasswordPageCubit>()
                                              .state
                                              .phoneNumber
                                              .value
                                              .fold(
                                                (PhoneNumberFailure l) =>
                                                    l.when(
                                                        empty: () => 'EMPTY',
                                                        invalid: () =>
                                                            'INVALID'),
                                                (String r) => null,
                                              );
                                        },
                                        onChanged: context
                                            .read<ForgotPasswordPageCubit>()
                                            .onPhoneNumberChanged,
                                      ),
                                      SizedBox(height: 45),
                                      SizedBox(
                                        height: 40,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: context
                                              .read<ForgotPasswordPageCubit>()
                                              .onNextPressed,
                                          child: Text(
                                            'შემდეგი',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: const [
                                    SizedBox(height: 50),
                                    Divider(),
                                    SizedBox(height: 20),
                                    Text(
                                      'ნებისმიერი კითხვის ან/და პრობლემის შემთხვევაში, დაუკავშირდით ჩვენს მომხმარებელთა ზრუნვის დეპარტამენტს: 0322500290',
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

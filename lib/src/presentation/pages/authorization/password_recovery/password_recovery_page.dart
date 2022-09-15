import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../di/injection_config.dart';
import '../../../navigation/route_args/password_recovery_page_args.dart';
import 'state/password_recovery_page_cubit.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({
    Key? key,
    required this.args,
  }) : super(key: key);
  final PasswordRecoveryPageArgs args;

  @override
  Widget build(BuildContext context) {
    // final CustomColors? theme = Theme.of(context).extension<CustomColors>();
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return BlocProvider<PasswordRecoveryPageCubit>(
      create: (_) => getIt<PasswordRecoveryPageCubit>()..init(args),
      child: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(mediaQueryData.size),
            child: SafeArea(
              child: Builder(
                builder: (BuildContext context) => Center(
                  child: BlocBuilder<PasswordRecoveryPageCubit,
                      PasswordRecoveryPageState>(
                    builder: (BuildContext context,
                        PasswordRecoveryPageState state) {
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
                                      BlocBuilder<PasswordRecoveryPageCubit,
                                          PasswordRecoveryPageState>(
                                        buildWhen: (previous, current) =>
                                            previous.mobileNumber !=
                                            current.mobileNumber,
                                        builder: (_, state) => Text(
                                          // 'შეტყობინება გამოგზავნილია ნომერზე ${state.mobileNumber}',
                                          'შეტყობინება გამოგზავნილია ნომერზე ${args.phoneNumber}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF262626),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 50),
                                      Text(
                                        'ერთჯერადი კოდი',
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
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              print('hey');
                                            },
                                            icon: Icon(Icons.refresh),
                                          ),
                                        ),
                                        validator: (String? value) {
                                          // if (value!.length < 4) {
                                          //   return 'მინ. 4 სიმბოლო';
                                          // } else {
                                          //   return null;
                                          // }
                                          return context
                                              .read<PasswordRecoveryPageCubit>()
                                              .state
                                              .otp
                                              .value
                                              .fold(
                                                  (l) => l.when(
                                                      empty: () => 'EMPTY!',
                                                      invalid: () =>
                                                          'INVALID!'),
                                                  (r) => null);
                                        },
                                        onChanged: context
                                            .read<PasswordRecoveryPageCubit>()
                                            .onCodeChanged,
                                      ),
                                      SizedBox(height: 45),
                                      SizedBox(
                                        height: 40,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: context
                                              .read<PasswordRecoveryPageCubit>()
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

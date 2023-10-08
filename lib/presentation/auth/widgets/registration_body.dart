import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/router/app_router.gr.dart';
import 'package:flutter_auth_app/core/services/snack_bar.dart';
import 'package:flutter_auth_app/core/utils/colors.dart';
import 'package:flutter_auth_app/core/utils/icons.dart';
import 'package:flutter_auth_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_button.dart';
import 'package:flutter_auth_app/presentation/shared_widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationBody extends StatefulWidget {
  const RegistrationBody({super.key});

  @override
  State<RegistrationBody> createState() => _RegistrationBodyState();
}

class _RegistrationBodyState extends State<RegistrationBody> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _smsCodeController = TextEditingController();

  bool checkboxDefaultValue = false;

  late Widget registrationBody;

  // String _verificationCode = '';

  @override
  void dispose() {
    _numberController.dispose();
    _smsCodeController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is VerificationErrorAuthState) {
            SnackBarService.showSnackBar(context, state.exception.toString());
          }

          if (state is VerificationSuccessAuthState) {
            SnackBarService.showSnackBar(
                context, 'SMS-код был отправлен на ваш телефон');
          }

          if (state is WrongSmsCodeAuthState) {
            SnackBarService.showSnackBar(context, state.exception.toString());
          }

          if (state is CorrectSmsCodeAuthState) {
            SnackBarService.showSnackBar(context, 'Юзер зареган');

            AutoRouter.of(context).push(
              const SetProfileRoute(),
            );
          }
        },
        builder: (context, state) {
          state.maybeWhen(
            loading: () {
              registrationBody = const Center(
                child: CircularProgressIndicator(
                  color: AppColors.red,
                ),
              );
            },
            orElse: () {
              registrationBody = Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60.h),
                  Text(
                    'Регистрация нового аккаунта',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomTextField(
                    labelText: 'Номер телефона',
                    inputType: InputType.phoneNumber,
                    controller: _numberController,
                  ),
                  SizedBox(height: 40.h),
                  CustomButtonWidget(
                    title: 'Выслать SMS-код',
                    isElevated: true,
                    onPressed: () {
                      context.read<AuthBloc>().add(PhoneVerifyEvent(
                            _numberController.text,
                          ));
                    },
                  ),
                  SizedBox(height: 18.h),
                  CustomButtonWidget(
                    title: 'Выслать повторно',
                    isElevated: false,
                    onPressed: () {
                      context.read<AuthBloc>().add(PhoneVerifyEvent(
                            _numberController.text,
                          ));
                    },
                  ),
                  SizedBox(height: 50.h),
                  CustomTextField(
                    labelText: 'Код из SMS',
                    inputType: InputType.smsCode,
                    controller: _smsCodeController,
                  ),
                  SizedBox(height: 46.h),
                  _CheckFieldWidget(
                    defaultValue: checkboxDefaultValue,
                    onTap: checkboxTap,
                  ),
                  SizedBox(height: 46.h),
                  CustomButtonWidget(
                    title: 'Далее',
                    isElevated: true,
                    onPressed: checkboxDefaultValue
                        ? () {
                            context.read<AuthBloc>().add(SignInEvent(
                                  _smsCodeController.text,
                                ));
                          }
                        : null,
                  ),
                ],
              );
            },
          );

          return registrationBody;
        },
      ),
    );
  }

  void checkboxTap() {
    setState(() {
      checkboxDefaultValue = !checkboxDefaultValue;
    });
  }
}

class _CheckFieldWidget extends StatefulWidget {
  const _CheckFieldWidget({
    super.key,
    required this.defaultValue,
    required this.onTap,
  });

  final bool defaultValue;
  final GestureTapCallback onTap;

  @override
  State<_CheckFieldWidget> createState() => RregisterCheckboxFieldStateWidget();
}

class RregisterCheckboxFieldStateWidget extends State<_CheckFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            widget.defaultValue
                ? AppIcons.checkboxPressed
                : AppIcons.checkboxEnabled,
          ),
          SizedBox(
            width: 10.w,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: AppColors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                height: 18.h / 12.sp,
              ),
              children: const [
                TextSpan(
                  text: 'Ознакомлен с ',
                ),
                TextSpan(
                  text: 'Договором оферты',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: '\nи согласен на ',
                ),
                TextSpan(
                  text: 'Рассылку',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

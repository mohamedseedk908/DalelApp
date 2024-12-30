import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/views/widgets/custome_text_field.dart';
import 'package:dalel/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:dalel/features/auth/presentation/views/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/locale_keys.g.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 152,),),
              const SliverToBoxAdapter(child: WelcomeTextWidget(text: LocaleKeys.welcome,),),
              const SliverToBoxAdapter(child: SizedBox(height: 16,),),
              const SliverToBoxAdapter(child: CustomTextField(labelText: LocaleKeys.fristName,),),
              const SliverToBoxAdapter(child: CustomTextField(labelText: LocaleKeys.lastName,),),
              const SliverToBoxAdapter(child: CustomTextField(labelText: LocaleKeys.emailAddress,),),
              const SliverToBoxAdapter(child: CustomTextField(labelText: LocaleKeys.password,),),
              const SliverToBoxAdapter(child: TermsAndCondition(),),
              const SliverToBoxAdapter(child: SizedBox(height: 88,),),
              SliverToBoxAdapter(child: CustomButton(onPressed:(){},text: LocaleKeys.signUp,)),
              const SliverToBoxAdapter(child: SizedBox(height: 16,),),
              SliverToBoxAdapter(child: HaveAnAccountWidget(),)
            ],
          ),
        )
    );
  }
}


class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: LocaleKeys.alreadyHaveAnAccount,style: CustomTextStyles.poppins300style16),
        TextSpan(text: LocaleKeys.signUp,style: CustomTextStyles.poppins400style12.copyWith(color: AppColors.deepGrey)),
      ],),),
    );
  }
}







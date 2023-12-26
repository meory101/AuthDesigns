import 'package:auth_design/auth1/singup.dart';
import 'package:auth_design/auth1_theme/colors.dart';
import 'package:auth_design/auth1_theme/fonts.dart';
import 'package:auth_design/components/custom_button.dart';
import 'package:auth_design/components/custom_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  List<String> hint = ['Email', 'Password'];
  List<Icon> icons = [
    const Icon(
      CupertinoIcons.mail,
      color: Colors.grey,
    ),
    const Icon(
      CupertinoIcons.lock_open,
      color: Colors.grey,
      size: 20,
    )
  ];
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont\'t have an account?',
              style: auth1_smallfont_g,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return SignUp();
                  },
                ));
              },
              child: Text(
                'Sign Up',
                style: auth1_smallfont_c,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome Back To Alpha Application !',
                  style: auth1_largewfont_w,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Login',
                  style: auth1_mainwfont_w,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Please signin to continue.',
                  style: auth1_smallfont_g,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 13),
                        height: 70,
                        child: CustomFormField(
                          index: index,
                          hint: ' ${hint[index]}',
                          style: auth1_subwfont_w,
                          cursor_color: auth1_bac,
                          label: Text(
                            hint[index],
                            style: auth1_smallfont_g,
                          ),
                          hintStyle: auth1_smallfont_g,
                          prefix_icon: icons[index],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      CustomButton(
                        label: Text(
                          'Login',
                          style: auth1_subwfont_b,
                        ),
                        width: 200,
                        height: 60,
                        color: auth1_maincolor,
                        radius: 60,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot password?',
                          style: auth1_smallfont_c,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

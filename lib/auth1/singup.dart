import 'package:auth_design/auth1/singin.dart';
import 'package:auth_design/auth1_theme/colors.dart';
import 'package:auth_design/auth1_theme/fonts.dart';
import 'package:auth_design/components/custom_button.dart';
import 'package:auth_design/components/custom_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<String> hint = ['Name', 'Email', 'Password'];
  List<Icon> icons = [
    Icon(
      CupertinoIcons.person,
      color: Colors.grey,
      size: 20,
    ),
    Icon(
      CupertinoIcons.mail,
      color: Colors.grey,
    ),
    Icon(
      CupertinoIcons.lock_open,
      color: Colors.grey,
      size: 20,
    ),
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
              'Already have an account?',
              style: auth1_smallfont_g,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return SignIn();
                  },
                ));
              },
              child: Text(
                'Sign In',
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
                  'Welcome To Alpha Application !',
                  style: auth1_largewfont_w,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Create Account',
                  style: auth1_mainwfont_w,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Please SignUp to continue.',
                  style: auth1_smallfont_g,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
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
                  child: CustomButton(
                    label: Text(
                      'SignUp',
                      style: auth1_subwfont_b,
                    ),
                    width: 200,
                    height: 60,
                    color: auth1_maincolor,
                    radius: 60,
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

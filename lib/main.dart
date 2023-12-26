import 'package:auth_design/auth1/singin.dart';
import 'package:auth_design/auth1/singup.dart';
import 'package:auth_design/auth1_theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AuthDesign());
}

class AuthDesign extends StatefulWidget {
  const AuthDesign({super.key});

  @override
  State<AuthDesign> createState() => _AuthDesignState();
}
 
class _AuthDesignState extends State<AuthDesign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: auth1_bac,
      ),
      debugShowCheckedModeBanner: false,
      home: SignUp(
        
      ),
    );
  }
}

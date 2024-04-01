// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unnecessary_null_comparison, deprecated_member_use, annotate_overrides

import 'package:bus_booking/config/routes/routes.dart';
import 'package:bus_booking/core/util/img_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id = "/login";

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //late bool passvis;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.035,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    ImgAssets.logo,
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: size.height * 0.023),
                Text(
                  "مرحبا بكم في Mind",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: size.height * 0.018),
                Text(
                  "تسجيل الدخول",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 15),
                ),
                SizedBox(height: size.height * 0.020),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'الرجاء إدخال البريد الإلكتروني';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          
                          hintText: "البريد الإلكتروني",
                        ),
                      ),
                      SizedBox(height: size.height * 0.016),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'الرجاء إدخال كلمة المرور';
                          }
                          return null;
                        },
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "كلمة المرور",

                          // suffixIcon:  IconButton( icon: Icon(
                          //   passvis ? Icons.visibility : Icons.visibility_off
                          //   ),onPressed:(){
                          //   setState(() {
                          //    passvis= !passvis;
                          //  });
                          // },),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.021),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "نسيت كلمة المرور!",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.black),
                  ),
                ),
                Text(
                  "احفظ تسجيل دخولي",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: size.height * 0.029),
                ElevatedButton(
                  onPressed: () async {},
                  child: Text(
                    "تسجيل الدخول",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: size.height * 0.029),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "لم تسجل بعد؟\t",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.signUp);
                      },
                      child: Text(
                        "انشاء حساب",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//import 'package:firebase_auth/firebase_auth.dart';

// داخل الحدث onPressed لزر تسجيل الخروج
//void signOut() async {
 // try {
 //   await FirebaseAuth.instance.signOut();
    // إضافة أي إجراءات إضافية ترغب في تنفيذها بعد تسجيل الخروج هنا
    // مثلاً إعادة توجيه المستخدم إلى صفحة تسجيل الدخول
  //  Navigator.pushNamed(context, 'login');
 // } catch (e) {
 //   print('حدث خطأ أثناء تسجيل الخروج: $e');
 // }
//}

// ignore_for_file: sort_child_properties_last, prefer_is_not_empty

import 'package:flutter/material.dart';
import 'package:testered/components/components.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:testered/screens/regester/login_screen.dart';

//import 'package:testered/widgets/widgets.dart';

import '../../common/theme_helper.dart';
import '../../components/under_part.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ForgetPassScreenState();
  }
}

class ForgetPassScreenState extends State<ForgetPassScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/Forgot password.png",
                ),
                const PageTitleBar(title: 'Forgot password ?'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "enter your new password related to email that associated to your account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 139, 139),
                              fontFamily: 'OpenSans',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                width: size.width * 0.8,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'Email',
                                      'Enter your accout email',
                                      Icons.email),
                                  keyboardType: TextInputType.emailAddress,
                                  //    prefixIcon: Icon(Icons.lock),
                                  validator: (val) {
                                    if (!(val!.isEmpty) &&
                                        !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                            .hasMatch(val)) {
                                      return "Enter a valid email address";
                                    }
                                    if (val.isEmpty) {
                                      return "Please fill tis Field";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: size.width * 0.8,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration(
                                      'New Password',
                                      'Remember this :)',
                                      Icons.lock_outline_rounded),
                                  validator: MultiValidator([
                                    RequiredValidator(
                                        errorText: 'must fill this field')
                                  ]),
                                  //    prefixIcon: Icon(Icons.lock),
                                ),
                                decoration:
                                    ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                width: size.width * 0.6,
                                decoration:
                                    ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        40, 10, 40, 10),
                                    child: Text(
                                      'Update'.toUpperCase(),
                                      // ignore: prefer_const_constructors
                                      style: TextStyle(
                                          letterSpacing: 2,
                                          fontSize: 17,
                                          fontFamily: 'OpenSans',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen()),
                                          (Route<dynamic> route) => false);
                                    } //مؤقت
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(height: 15.0),
                              UnderPart(
                                title: "Remmember your password?",
                                navigatorText: "Login Page",
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

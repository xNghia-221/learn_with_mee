import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/router/pages.dart';
import 'package:learn_with_mee/@share/constants/language.constant.dart';
import 'package:learn_with_mee/@share/style/AppImages.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:learn_with_mee/screen/login/login.controller.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.cancel_outlined,
          color: Colors.black,
          size: 28,
        ).onTap(() {
          goToAndRemoveAll(screen: ROUTER_HOME);
        }),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              CupertinoIcons.question_circle,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              SelectionArea(
                  child: Text(
                getLocalize(titleLogin, args: []),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              )).pOnly(top: 40),
              SelectionArea(
                  child: Text(
                getLocalize(descriptionLogin, args: []),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
              )).paddingSymmetric(horizontal: 30, vertical: 20),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: const Color(0xFFF5F5F5),
                child: ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Color(0xFF3275FA),
                  ),
                  title: Text(
                    getLocalize(faceBookLogin, args: []),
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  tileColor: const Color(0xFFF5F5F5),
                  dense: false,
                ),
              ).pOnly(left: 20, top: 10, right: 20).onTap(() {
                controller.handleSignInFacebook();
              }),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: const Color(0xFFF5F5F5),
                child: ListTile(
                  leading: SvgPicture.asset(
                    AppImages.googleIcon,
                  ),
                  title: Text(
                    getLocalize(googleLogin, args: []),
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  tileColor: const Color(0xFFF5F5F5),
                  dense: false,
                ),
              ).paddingSymmetric(horizontal: 20).onTap(() {
                controller.handleSignInGoogle();
              }),
              const Spacer(),
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0x48CDCECE),
                ),
                child: Visibility(
                  visible: false,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                        'Already have an account ?',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      )),
                      SelectionArea(
                          child: GestureDetector(
                        onTap: () => {},
                        child: Text(
                          ' Login',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                color: const Color.fromARGB(255, 255, 136, 0),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

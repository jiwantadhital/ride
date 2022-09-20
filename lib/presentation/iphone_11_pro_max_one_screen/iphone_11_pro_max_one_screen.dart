import 'controller/iphone_11_pro_max_one_controller.dart';
import 'package:dark_s_application4/core/app_export.dart';
import 'package:dark_s_application4/core/utils/validation_functions.dart';
import 'package:dark_s_application4/widgets/custom_button.dart';
import 'package:dark_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dark_s_application4/domain/facebookauth/facebook_auth_helper.dart';
import 'package:dark_s_application4/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxOneScreen extends GetWidget<Iphone11ProMaxOneController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                          margin:
                                              getMargin(top: 41, bottom: 41),
                                          decoration: AppDecoration
                                              .gradientGray200Gray100
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL150),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomTextFormField(
                                                    width: 332,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .groupNineController,
                                                    hintText:
                                                        "lbl_enter_you_name".tr,
                                                    margin: getMargin(
                                                        left: 15,
                                                        top: 204,
                                                        right: 15),
                                                    alignment: Alignment.center,
                                                    validator: (value) {
                                                      if (!isText(value)) {
                                                        return "Please enter valid text";
                                                      }
                                                      return null;
                                                    }),
                                                CustomTextFormField(
                                                    width: 332,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .groupEightController,
                                                    hintText:
                                                        "msg_enter_your_pass"
                                                            .tr,
                                                    margin: getMargin(
                                                        left: 15,
                                                        top: 18,
                                                        right: 15),
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    alignment: Alignment.center,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          (!isValidPassword(
                                                              value,
                                                              isRequired:
                                                                  true))) {
                                                        return "Please enter valid password";
                                                      }
                                                      return null;
                                                    },
                                                    isObscureText: true),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 37,
                                                        top: 27,
                                                        right: 37),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                              margin: getMargin(
                                                                  top: 13,
                                                                  bottom: 12),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "msg_forgot_password2"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.black900,
                                                                                fontSize: getFontSize(14),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w400)),
                                                                        TextSpan(
                                                                            text: "lbl_click_here"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.blue800,
                                                                                fontSize: getFontSize(12),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w400,
                                                                                decoration: TextDecoration.underline))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left)),
                                                          CustomButton(
                                                              width: 134,
                                                              text: "lbl_login"
                                                                  .tr,
                                                              margin: getMargin(
                                                                  left: 6))
                                                        ])),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 37,
                                                        top: 24,
                                                        right: 37),
                                                    child: Text(
                                                        "lbl_sign_in_using".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold12
                                                            .copyWith())),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 8,
                                                            right: 15,
                                                            bottom: 139),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapRowrectangleeight();
                                                                  },
                                                                  child:
                                                                      Container(
                                                                          decoration: AppDecoration.outlineWhiteA701.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder20),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(20.00)), child: CommonImageView(imagePath: ImageConstant.imgRectangle8, height: getVerticalSize(43.00), width: getHorizontalSize(40.00))),
                                                                                Padding(padding: getPadding(left: 9, top: 17, right: 16, bottom: 13), child: Text("lbl_facebook".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold12IndigoA701.copyWith()))
                                                                              ]))),
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapRowrectangleten();
                                                                  },
                                                                  child: Container(
                                                                      margin: getMargin(left: 6),
                                                                      decoration: AppDecoration.outlineWhiteA701.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                        ClipRRect(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                20.00)),
                                                                            child: CommonImageView(
                                                                                imagePath: ImageConstant.imgRectangle10,
                                                                                height: getVerticalSize(43.00),
                                                                                width: getHorizontalSize(40.00))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 9,
                                                                                top: 17,
                                                                                right: 31,
                                                                                bottom: 13),
                                                                            child: Text("lbl_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold12IndigoA701.copyWith()))
                                                                      ]))),
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              9),
                                                                  decoration: AppDecoration
                                                                      .outlineWhiteA701
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder20),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        ClipRRect(
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                20.00)),
                                                                            child: CommonImageView(
                                                                                imagePath: ImageConstant.imgRectangle12,
                                                                                height: getVerticalSize(43.00),
                                                                                width: getHorizontalSize(40.00))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 9,
                                                                                top: 14,
                                                                                right: 34,
                                                                                bottom: 14),
                                                                            child: Text("lbl_twitter".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold12IndigoA701.copyWith()))
                                                                      ]))
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              top: 46, right: 10, bottom: 46),
                                          child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse3,
                                              height: getVerticalSize(317.00),
                                              width:
                                                  getHorizontalSize(276.00)))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                          height: getVerticalSize(327.00),
                                          width: getHorizontalSize(290.00),
                                          margin: getMargin(
                                              top: 10, right: 10, bottom: 1),
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse4,
                                                        height: getVerticalSize(
                                                            327.00),
                                                        width:
                                                            getHorizontalSize(
                                                                290.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            71.00),
                                                        width:
                                                            getHorizontalSize(
                                                                170.00),
                                                        margin: getMargin(
                                                            left: 32,
                                                            top: 39,
                                                            right: 32,
                                                            bottom: 39),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_new_user"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterBold36
                                                                              .copyWith()))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Container(
                                                                      margin: getMargin(left: 46, top: 10, right: 46),
                                                                      child: RichText(
                                                                          text: TextSpan(children: [
                                                                            TextSpan(
                                                                                text: "lbl_sign".tr,
                                                                                style: TextStyle(color: ColorConstant.gray700, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w700)),
                                                                            TextSpan(
                                                                                text: ' ',
                                                                                style: TextStyle(color: ColorConstant.gray700, fontSize: getFontSize(36), fontFamily: 'Inter', fontWeight: FontWeight.w700)),
                                                                            TextSpan(
                                                                                text: "lbl_up".tr,
                                                                                style: TextStyle(color: ColorConstant.gray700, fontSize: getFontSize(16), fontFamily: 'Inter', fontWeight: FontWeight.w700))
                                                                          ]),
                                                                          textAlign: TextAlign.left)))
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                          padding:
                                              getPadding(left: 10, bottom: 10),
                                          child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse5,
                                              height: getVerticalSize(176.00),
                                              width:
                                                  getHorizontalSize(275.00)))),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                          height: getVerticalSize(134.00),
                                          width: getHorizontalSize(291.00),
                                          margin:
                                              getMargin(left: 10, bottom: 10),
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse6,
                                                        height: getVerticalSize(
                                                            134.00),
                                                        width:
                                                            getHorizontalSize(
                                                                291.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 62,
                                                            top: 28,
                                                            right: 62,
                                                            bottom: 28),
                                                        child: Text(
                                                            "lbl_login2".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterExtraBold32
                                                                .copyWith())))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                          height: getVerticalSize(69.00),
                                          width: getHorizontalSize(33.00),
                                          margin: getMargin(
                                              left: 75,
                                              top: 224,
                                              right: 75,
                                              bottom: 224),
                                          child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.lightBlue400,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      width: getHorizontalSize(
                                                          3.00)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              16.50))),
                                              child: Stack(children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 6,
                                                            top: 10,
                                                            right: 6,
                                                            bottom: 8),
                                                        child: CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgDoubleup,
                                                            height:
                                                                getSize(21.00),
                                                            width: getSize(
                                                                21.00))))
                                              ])))),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                          height: getSize(141.00),
                                          width: getSize(141.00),
                                          margin: getMargin(
                                              left: 38,
                                              top: 86,
                                              right: 38,
                                              bottom: 86),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray202,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          70.50))))),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 37,
                                              top: 111,
                                              right: 37,
                                              bottom: 111),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(30.00)),
                                              child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle6,
                                                  height:
                                                      getVerticalSize(128.00),
                                                  width: getHorizontalSize(
                                                      139.00)))))
                                ])))))));
  }

  onTapRowrectangleeight() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowrectangleten() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}

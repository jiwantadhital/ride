import 'package:flutter/material.dart';
import 'package:dark_s_application4/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineWhiteA701 => BoxDecoration(
        color: ColorConstant.gray201,
        border: Border.all(
          color: ColorConstant.whiteA701,
          width: getHorizontalSize(
            3.00,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: ColorConstant.lightBlue400,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            3.00,
          ),
        ),
      );
  static BoxDecoration get gradientGray200Gray100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.1430555890997421,
            0.04158413496567334,
          ),
          end: Alignment(
            1.0000000323097133,
            1.0366336576954884,
          ),
          colors: [
            ColorConstant.gray200,
            ColorConstant.gray100,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.50,
    ),
  );

  static BorderRadius customBorderTL150 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        150.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        150.00,
      ),
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );
}

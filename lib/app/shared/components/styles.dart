import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color FONT_COLOR = Color(0xFF595959);

/// ////////////////////////////////////////////////////////////////////////////
/// GOTHAM - Book and Bold
/// ////////////////////////////////////////////////////////////////////////////

class GothamNormalFont extends TextStyle {
  const GothamNormalFont({
    double fontSize: 14,
    Color color: FONT_COLOR,
    TextDecoration decoration,
    FontStyle fontStyle: FontStyle.normal,
  }): super(
    // const
    fontFamily: 'Gotham',
    fontWeight: FontWeight.w400,
    // params
    fontSize: fontSize,
    color: color,
    decoration: decoration,
    fontStyle: fontStyle
  );
}

class GothamBoldFont extends TextStyle {
  const GothamBoldFont({
    double fontSize: 14,
    Color color: FONT_COLOR,
    TextDecoration decoration,
    FontStyle fontStyle: FontStyle.normal,
  }): super(
      // const
      fontFamily: 'Gotham',
      fontWeight: FontWeight.w700,
      // params
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      fontStyle: fontStyle
  );
}

/// ////////////////////////////////////////////////////////////////////////////
/// OpenSans - Regular, SemiBold and Bold
/// ////////////////////////////////////////////////////////////////////////////

class OpensSansRegularFont extends TextStyle {
  const OpensSansRegularFont({
    double fontSize: 14,
    Color color: FONT_COLOR,
    TextDecoration decoration,
    FontStyle fontStyle: FontStyle.normal,
  }): super(
    // const
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400,
      // params
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      fontStyle: fontStyle
  );
}

class OpenSansSemiBoldFont extends TextStyle {
  const OpenSansSemiBoldFont({
    double fontSize: 14,
    Color color: FONT_COLOR,
    TextDecoration decoration,
    FontStyle fontStyle: FontStyle.normal,
  }): super(
    // const
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w600,
      // params
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      fontStyle: fontStyle
  );
}

class OpenSansBoldFont extends TextStyle {
  const OpenSansBoldFont({
    double fontSize: 14,
    Color color: FONT_COLOR,
    TextDecoration decoration,
    FontStyle fontStyle: FontStyle.normal,
  }): super(
    // const
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w700,
      // params
      fontSize: fontSize,
      color: color,
      decoration: decoration,
      fontStyle: fontStyle
  );
}

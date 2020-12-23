import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {

  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final double radius;
  final double buttonHeight;
  final Widget buttonIcon;
  final VoidCallback onPressed;

  const SocialLoginButton(
      {Key key,
        @required this.buttonText,
        this.buttonColor : Colors.orange,
        this.buttonTextColor : Colors.white,
        this.radius : 16,
        this.buttonHeight : 40,
        this.buttonIcon,
        this.onPressed})
        : assert(buttonText != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: buttonHeight,
        child: RaisedButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(radius)
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(buttonIcon != null) ...[
                buttonIcon,
                Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: buttonTextColor)
                ),
                Opacity(opacity: 0, child: buttonIcon)
              ],
              if(buttonIcon == null) ...[
                Container(),
                Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: buttonTextColor),
                ),
                Container()
              ]
            ],
          ),
          color: buttonColor,
        ),
      ),
    );
  }
}
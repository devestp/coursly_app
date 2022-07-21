import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class CourslyButton extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Color? color;
  final Color? bgColor;
  final TextStyle? style;
  final VoidCallback? onTap;

  const CourslyButton({
    required this.text,
    this.icon,
    this.color,
    this.bgColor,
    this.style,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 22),
        decoration: BoxDecoration(
          borderRadius: SmoothBorderRadius(cornerRadius: 12, cornerSmoothing: 1),
          color: bgColor ?? Colors.black,
        ),
        child: _buildButtonContent(),
      ),
    );
  }

  Widget _buildButtonContent() {
    return Center(
      child: icon != null ? _buildButtonWithIcon() : _buildButtonText(),
    );
  }

  Widget _buildButtonWithIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon as Widget,
        const SizedBox(
          width: 8,
        ),
        _buildButtonText()
      ],
    );
  }

  Widget _buildButtonText() {
    final defaultStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: color ?? Colors.white,
    );

    return Text(
      text,
      style: style != null ? defaultStyle.merge(style) : defaultStyle,
    );
  }
}

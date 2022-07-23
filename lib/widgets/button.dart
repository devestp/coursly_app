import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class CourslyButton extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Color? color;
  final Color? bgColor;
  final TextStyle? style;
  final VoidCallback? onTap;
  final bool loading;

  const CourslyButton({
    required this.text,
    this.icon,
    this.color,
    this.bgColor,
    this.style,
    this.onTap,
    this.loading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 12,
            cornerSmoothing: 1,
          ),
          color: bgColor ?? Colors.black,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 22),
          child: _buildButtonContent(),
        ),
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

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: style != null ? defaultStyle.merge(style) : defaultStyle,
        ),
        if (loading)
          const SizedBox(
            width: 8,
          ),
        if (loading)
          const SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 3,
            ),
          ),
      ],
    );
  }
}

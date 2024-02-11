import 'package:flutter/material.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';

class OxygeneTextFormField extends StatelessWidget {
  const OxygeneTextFormField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.validator,
    this.password = false,
    this.onSuffixTap,
    this.suffixIcon,
  });

  final String hintText;
  final String icon;
  final suffixIcon;
  final bool password;
  final VoidCallback? onSuffixTap;
  final TextEditingController controller;

  ///validation function
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: AppColor.blue,
      borderRadius: BorderRadius.circular(40),
      child: TextFormField(
        controller: controller,
        obscureText: password,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 20,
              right: 8,
            ),
            child: Image.asset(
              icon,
              height: MediaQuery.of(context).size.height / 50,
              width: 1,
            ),
          ),
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  onTap: onSuffixTap,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      right: 20,
                    ),
                    child: Image.asset(
                      suffixIcon,
                      height: MediaQuery.of(context).size.height / 50,
                      width: 1,
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0,
                  width: 0,
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintStyle: TextStyle(
            color: AppColor.blue,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          hintText: hintText,
          fillColor: Colors.white70,
        ),
      ),
    );
  }
}

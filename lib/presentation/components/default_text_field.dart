import 'package:flutter/material.dart';

import '../style/colors.dart';

class DefualtTextField extends StatefulWidget {
  String labelText = ' ';
  bool isPassword = true;

  bool isObsecure = false;
  double? size;

  DefualtTextField(
      {required this.labelText,
      required this.isPassword,
      required this.isObsecure,
      this.size = double.infinity});

  @override
  State<DefualtTextField> createState() => _DefualtTextFieldState();
}

class _DefualtTextFieldState extends State<DefualtTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kGrey, borderRadius: BorderRadiusDirectional.circular(17)),
        height: 45,
        width: widget.size,
        child: TextFormField(
            obscureText: widget.isObsecure,
            cursorColor: kBlue,
            style: const TextStyle(fontSize: 18),
            decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? widget.isObsecure
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              widget.isObsecure = !widget.isObsecure;
                            });
                          },
                          icon: widget.isObsecure
                              ? const Icon(Icons.visibility)
                              : const Icon(
                                  Icons.visibility_off,
                                ),
                        )
                      : null
                  : null,
              labelText: widget.labelText,
              labelStyle: TextStyle(color: kBlue),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
            )));
  }
}

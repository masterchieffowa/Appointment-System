import 'package:flutter/material.dart';

Widget defaultTextFeild({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required String hint,
  IconData? prefix,
  IconData? suffix,
  required Function validate,
  required Function onSubmit,
  required Function onChange,
  bool isPassword = false,
  bool isClickable = true,
  Color lablecolor = Colors.black,
  Color cursorColor = Colors.black38,
  Color suffixColor = Colors.black38,
  Color prefixColor = Colors.black38,
  Color hintColor = Colors.black38,

  TextInputType textInputType = TextInputType.text,
  InputBorder border = InputBorder.none,
  int maxLines = 1,
  double labelsize = 20,
  double feildheight = 50,
  double spacerhight = 20,
  double spacerwidth = 0,
  double borderRaduis = 25,
  double feildwidth = double.infinity,
  double topfeildpadding = 2,
  double leftfeildpadding = 20.0,
  double rightfeildpadding = 20,
  double bottomfeildpadding = 0,
  required Function suffixPressed,
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: type,
//       obscureText: isPassword,
//       enabled: isClickable,
//       onFieldSubmitted: (s) {
//         onSubmit(s);
//       },
//       onChanged: (s) {
//         onChange(s);
//       },
//       validator: (s) {
//         validate(s);
//       },
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(prefix),
//         suffixIcon: IconButton(
//           onPressed: () {
//             suffixPressed();
//           },
//           icon: Icon(suffix),
//         ),
//         border: OutlineInputBorder(),
//       ),
//     );
})=>Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          color: lablecolor,
          fontSize: labelsize,
        ),
      ),
      SizedBox(
        height: spacerhight,
        width: spacerwidth,
      ),
      Container(
        width: feildwidth,
        height: feildheight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRaduis),
          color: Colors.blueGrey[50],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: leftfeildpadding, right: rightfeildpadding,top: topfeildpadding, bottom: bottomfeildpadding),
          child: Form(
            key: GlobalKey<FormState>(),
            child: TextFormField(
              cursorColor: cursorColor, // Set the cursor color
              keyboardType: textInputType,
              maxLines: maxLines,
              decoration: InputDecoration(
                prefixIcon: prefix != null
                    ? Icon(
                        prefix,
                        color: prefixColor,
                      )
                    : null,
                suffixIcon: suffix != null
                    ? IconButton(
                        onPressed: () {
                          suffixPressed();
                        },
                        icon: Icon(
                          suffix,
                          color: suffixColor,
                        ),
                      )
                    : null,
                border: border,
                hintText: hint,
                hintStyle: TextStyle(
                  color: hintColor,
                ),
              ),
              controller: controller,
              obscureText: isPassword,
              enabled: isClickable,
              onFieldSubmitted: (s) {
                onSubmit(s);
              },
              onChanged: (s) {
                onChange(s);
              },
              validator: (s) {
                validate(s);
              },
            ),
          ),
        ),
      ),
    ],
  ),
);
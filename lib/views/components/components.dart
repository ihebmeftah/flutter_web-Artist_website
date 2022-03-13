import 'package:flutter/material.dart';
import 'package:flutter_web/views/theme/theme.dart';

Widget defaultTextFormField({
  String? Function(String? val)? validate,
  required String htext,
  bool isPass = false,
  Color cursorColor = Colors.black,
  double cursorHeight = 22.0,
  required IconData prefixIcon,
  IconData? sufixIcon,
  required TextEditingController? controller,
  TextInputAction? textInputAction,
  int? maxLength,
  int maxLines = 1,
  minLines,
  VoidCallback? pressicon,
  tapFunction,
  change,
  onsubmit,
  TextInputType? textInputType,
  Widget? label,
  bool? isEnable = true,
}) =>
    TextFormField(
      onFieldSubmitted: onsubmit,
      enabled: isEnable,
      validator: (value) => validate!(value),
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      controller: controller,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight,
      obscureText: isPass,
      keyboardType: textInputType,
      onTap: tapFunction,
      onChanged: change,
      decoration: InputDecoration(
          label: label,
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: IconButton(
            onPressed: pressicon,
            icon: Icon(
              sufixIcon,
            ),
            autofocus: false,
            color: Colors.black,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: htext),
    );

Widget navbarItem({
  required String text,
}) {
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(12),
      overlayColor: MaterialStateProperty.all(Colors.red),
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    child: Text(
      text.toUpperCase(),
      style: const TextStyle(fontSize: 18),
    ),
  );
}

Widget buildmycontainer({String? url, double? height, Widget? child}) {
  return Container(
    height: height ?? 450,
    decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: NetworkImage(
              url ??
                  "https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/129000327_104773551487508_3874365708364612442_n.png?_nc_cat=104&ccb=1-5&_nc_sid=e3f864&_nc_ohc=hgZFP1UNonoAX-CG1GD&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9Av73IY9mGwoYlUE85LuD50pydCFIlUnS3_KBQ__mqQQ&oe=6251F54B",
            ),
            fit: BoxFit.fill)),
    child: child,
  );
}

Widget navBAr() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://scontent.ftun7-1.fna.fbcdn.net/v/t1.6435-9/124799568_111312587455829_2532760616190581867_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=K5uwqEmiKBcAX961j-0&tn=JtdNzOyUZrZJh6ru&_nc_ht=scontent.ftun7-1.fna&oh=00_AT9GonpNg5lq2-dnzg4jMTVi6fvPlI3TmpPwfRhex49GDg&oe=6253A562'),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Redstar ",
            style: ThemesApp().titleStyle,
          )
        ],
      ),
      Row(
        children: [
          navbarItem(text: 'home'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'music'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'events'),
          const SizedBox(
            width: 30,
          ),
          navbarItem(text: 'shop'),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
    ],
  );
}

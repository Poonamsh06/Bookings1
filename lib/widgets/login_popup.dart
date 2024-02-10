import 'package:flutter/material.dart';

class LoginPopUp extends StatefulWidget {
  //final String text;
  final List<String> dropdownItems;

  const LoginPopUp({Key? key, required this.dropdownItems}) : super(key: key);

  @override
  State<LoginPopUp> createState() => _FooterButtonsState();
}

class _FooterButtonsState extends State<LoginPopUp> {
  late String selectedDropdownItem;
  @override
  void initState() {
    super.initState();
    selectedDropdownItem =
        widget.dropdownItems.isNotEmpty ? widget.dropdownItems.first : '';
  }

  @override
  Widget build(BuildContext context) {
    //bool _isHovered = false;
    return GestureDetector(
      onTap: () {
        final RenderBox button = context.findRenderObject() as RenderBox;
        final RenderBox overlay =
            Overlay.of(context)!.context.findRenderObject() as RenderBox;
        final buttonSize = button.size;
        final buttonCenter = button.localToGlobal(
            Offset(buttonSize.width, buttonSize.height),
            ancestor: overlay);

        showMenu(
          context: context,
          position: RelativeRect.fromRect(
            Rect.fromCircle(center: buttonCenter, radius: 0),
            Offset.zero & overlay.size,
          ),
          items: widget.dropdownItems.map((String item) {
            return PopupMenuItem<String>(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              value: item,
              child: Text(item),
            );
          }).toList(),
        ).then((value) {
          if (value != null) {
            setState(() {
              selectedDropdownItem = value;
            });
          }
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.071,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 5, 49, 84),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 113, 112, 112)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            selectedDropdownItem,
            style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class FooterButton1 extends StatefulWidget {
  final dynamic image;
  final String text;
  final List<String> dropdownItems;
  const FooterButton1(
      {super.key, this.image, required this.text, required this.dropdownItems});

  @override
  State<FooterButton1> createState() => _FooterButton1State();
}

class _FooterButton1State extends State<FooterButton1> {
  late String selectedDropdownItem;
  // bool _isHovered = false;
  @override
  void initState() {
    super.initState();
    selectedDropdownItem =
        widget.dropdownItems.isNotEmpty ? widget.dropdownItems.first : '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final RenderBox button = context.findRenderObject() as RenderBox;
        final RenderBox overlay =
            Overlay.of(context)!.context.findRenderObject() as RenderBox;
        final buttonSize = button.size;
        final buttonCenter = button.localToGlobal(
            Offset(buttonSize.width, buttonSize.height),
            ancestor: overlay);

        showMenu(
          context: context,
          position: RelativeRect.fromRect(
            Rect.fromCircle(center: buttonCenter, radius: 0),
            Offset.zero & overlay.size,
          ),
          items: widget.dropdownItems.map((String item) {
            return PopupMenuItem<String>(
              textStyle: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              value: item,
              child: Text(item),
            );
          }).toList(),
        ).then((value) {
          if (value != null) {
            setState(() {
              selectedDropdownItem = value;
            });
          }
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.071,
        width: MediaQuery.of(context).size.width * 0.11,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 5, 49, 84),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                width: 1, color: const Color.fromARGB(255, 113, 112, 112))),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.language_outlined, color: Colors.white),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.006,
              ),
              Text(selectedDropdownItem,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.004,
              ),
              const Icon(Icons.keyboard_arrow_down, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

class FooterText1 extends StatelessWidget {
  final String text;
  const FooterText1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 19, fontWeight: FontWeight.normal, color: Colors.black),
    );
    //Text1(text: 'Login');
  }
}

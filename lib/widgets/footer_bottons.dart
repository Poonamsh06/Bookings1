import 'package:flutter/material.dart';

class FooterButtons extends StatefulWidget {
  final dynamic image;
  final String text;
  final List<String> dropdownItems;

  FooterButtons(
      {Key? key,
      required this.text,
      required this.image,
      required this.dropdownItems})
      : super(key: key);

  @override
  State<FooterButtons> createState() => _FooterButtonsState();
}

class _FooterButtonsState extends State<FooterButtons> {
  late String selectedDropdownItem;
  @override
  void initState() {
    super.initState();
    selectedDropdownItem =
        widget.dropdownItems.isNotEmpty ? widget.dropdownItems.first : '';
  }

  @override
  Widget build(BuildContext context) {
    bool _isHovered = false;
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
          color: Color.fromARGB(255, 5, 49, 84),
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(width: 1, color: Color.fromARGB(255, 113, 112, 112)),
        ),
        child: Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorFiltered(
                colorFilter: _isHovered
                    ? ColorFilter.mode(
                        Color.fromARGB(255, 244, 199, 201), BlendMode.modulate)
                    : ColorFilter.mode(Colors.transparent, BlendMode.modulate),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.006),
              Text(
                selectedDropdownItem,
                style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.004),
              const Icon(Icons.keyboard_arrow_down, color: Colors.white)
            ],
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
  bool _isHovered = false;
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
            color: Color.fromARGB(255, 5, 49, 84),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                width: 1, color: Color.fromARGB(255, 113, 112, 112))),
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

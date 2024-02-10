import 'package:flutter/material.dart';

class FooterSocialLinks extends StatefulWidget {
  final String imagePath;

  const FooterSocialLinks({Key? key, required this.imagePath})
      : super(key: key);

  @override
  _FooterSocialLinksState createState() => _FooterSocialLinksState();
}

class _FooterSocialLinksState extends State<FooterSocialLinks> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: ColorFiltered(
            colorFilter: _isHovered
                ? ColorFilter.mode(
                    Color.fromARGB(255, 244, 199, 201), BlendMode.modulate)
                : ColorFilter.mode(Colors.transparent, BlendMode.modulate),
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.03,
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class FooterSociaLinks extends StatelessWidget {
//   final images;
//   const FooterSociaLinks({super.key, this.images});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Container(
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Image.asset(
//             images,
//             //
//             fit: BoxFit.fill,
//             height: MediaQuery.of(context).size.height * 0.043,
//             width: MediaQuery.of(context).size.width * 0.023,
//           ),
//         ),
//       ),
//     );
//   }
// }

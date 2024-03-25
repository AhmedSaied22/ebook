import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrWidget extends StatelessWidget {
  const CustomErrWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(errMessage,
            style: Styles.textStyle18, textAlign: TextAlign.center));
  }
}

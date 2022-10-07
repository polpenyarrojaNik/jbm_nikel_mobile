import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/text_button_widget.dart';

class ButtonsRowBarWidget extends StatelessWidget {
  ButtonsRowBarWidget({super.key, required this.textButtonsList});

  final List<TextButtonWidget> textButtonsList;
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
      child: SizedBox(
        height: 45,
        child: ListView.separated(
          shrinkWrap: true,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) => textButtonsList[i],
          separatorBuilder: (context, i) => const SizedBox(
            width: 4,
          ),
          itemCount: textButtonsList.length,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/theme/radius.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    required this.onSubmit,
    required this.onFilterClick,
    required this.searchLabel,
    required this.initialValue,
    super.key,
  });

  final Function(String)? onSubmit;
  final VoidCallback onFilterClick;
  final String searchLabel;
  final String initialValue;

  @override
  State<StatefulWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _textController = TextEditingController();
  late FocusNode _focusNode;
  bool _emptyText = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _textController
      ..text = widget.initialValue
      ..addListener(() {
        setState(() {
          _emptyText = _textController.text.isEmpty;
        });
      });
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Focus(
              focusNode: _focusNode,
              onFocusChange: (bool hasFocus) => hasFocus
                  ? _textController.selection = TextSelection(
                      baseOffset: 0,
                      extentOffset: _textController.text.length,
                    )
                  : null,
              child: TextField(
                controller: _textController,
                onSubmitted: widget.onSubmit,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: widget.searchLabel,
                  labelStyle: const TextStyle(fontSize: 20),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: AppRadius.radius24,
                    borderSide:
                        BorderSide(color: context.primaryColor, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: AppRadius.radius24,
                    borderSide: _emptyText
                        ? BorderSide.none
                        : BorderSide(color: context.primaryColor, width: 1),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: Spacing.regular.value),
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _emptyText
                      ? null
                      : IconButton(
                          onPressed: _textController.clear,
                          icon: const Icon(Icons.close),
                        ),
                ),
              ),
            ),
          ),
          AppGap.basicWidth(),
          IconButton(
            onPressed: widget.onFilterClick,
            icon: const Icon(Icons.filter_list_alt),
          ),
        ],
      ),
    );
  }
}

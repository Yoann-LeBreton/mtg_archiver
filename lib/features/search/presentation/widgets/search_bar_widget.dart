import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/radius.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    required this.onSubmit,
    required this.onFilterClick,
    required this.searchLabel,
    super.key,
  });

  final Function(String)? onSubmit;
  final VoidCallback onFilterClick;
  final String searchLabel;

  @override
  State<StatefulWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  bool _emptyText = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _emptyText = _controller.text.isEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              onSubmitted: widget.onSubmit,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: widget.searchLabel,
                labelStyle: const TextStyle(fontSize: 20),
                focusedBorder: OutlineInputBorder(
                  borderRadius: AppRadius.radius24,
                  borderSide:
                      const BorderSide(color: AppColors.blackLight, width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: AppRadius.radius24,
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: Spacing.regular.value),
                filled: true,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _emptyText
                    ? null
                    : IconButton(
                        onPressed: _controller.clear,
                        icon: const Icon(Icons.close),
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

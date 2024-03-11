import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/search/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/search/presentation/widgets/back_to_top_widget.dart';
import 'package:mtg_archiver/features/search/presentation/widgets/card_list_item_widget.dart';

class CardListWidget extends StatefulWidget {
  const CardListWidget({
    required this.cards,
    required this.onRefresh,
    required this.onNextPage,
    super.key,
  });

  final List<CardEntity> cards;
  final AsyncCallback onRefresh;
  final VoidCallback onNextPage;

  @override
  State<StatefulWidget> createState() => _CardListWidgetState();
}

class _CardListWidgetState extends State<CardListWidget> {
  final ScrollController _scrollController = ScrollController();
  bool showBackToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: widget.onRefresh,
      child: Stack(
        children: <Widget>[
          CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.all(Spacing.small.value),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: Spacing.base.value,
                    crossAxisSpacing: Spacing.base.value,
                    childAspectRatio: 0.75,
                    crossAxisCount: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 2
                        : 6,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount: widget.cards.length,
                    (BuildContext context, int index) =>
                        CardListItemWidget(card: widget.cards[index]),
                  ),
                ),
              ),
            ],
          ),
          if (showBackToTopButton)
            Positioned(
              bottom: 20,
              right: 20,
              child: BackToTopWidget(
                controller: _scrollController,
              ),
            ),
        ],
      ),
    );
  }

  void _scrollListener() {
    if (showBackToTopButton && _scrollController.offset == 0) {
      setState(() {
        showBackToTopButton = false;
      });
    }

    if (!showBackToTopButton && _scrollController.offset > 0) {
      setState(() {
        showBackToTopButton = true;
      });
    }

    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent - 300) {
      widget.onNextPage.call();
    }
  }
}

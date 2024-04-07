import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_filter_entity.dart';

class FilterModalBottomWidget {
  static Future<T?> show<T>({
    required BuildContext context,
    required Function(SearchFilterEntity filters) onFilterChanged,
    required SearchFilterEntity filter,
  }) async {
    SearchFilterEntity filterEdited = filter.copyWith();
    final List<bool> selectedSortModes = SortMode.values
        .map((SortMode mode) => mode == filter.sortMode)
        .toList();
    final List<bool> selectedSortBy = SortType.values
        .map((SortType type) => type == filter.sortType)
        .toList();
    return showModalBottomSheet(
      context: context,
      elevation: 8,
      showDragHandle: true,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter mySetState) {
            return Padding(
              padding: EdgeInsets.all(Spacing.regular.value),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(context.translate().sort_by),
                  ToggleButtons(
                    direction: Axis.horizontal,
                    onPressed: (int index) {
                      filterEdited = filterEdited.copyWith(
                        sortType: SortType.values[index],
                      );
                      mySetState(() {
                        for (int i = 0; i < selectedSortBy.length; i++) {
                          selectedSortBy[i] = (i == index);
                        }
                      });
                    },
                    isSelected: selectedSortBy,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.blue[700],
                    selectedColor: Colors.white,
                    fillColor: Colors.blue[200],
                    color: Colors.blue[400],
                    children: SortType.values
                        .map((SortType e) => Text(e.name))
                        .toList(),
                  ),
                  Text(context.translate().sort_mode),
                  ToggleButtons(
                    direction: Axis.horizontal,
                    onPressed: (int index) {
                      filterEdited = filterEdited.copyWith(
                        sortMode: SortMode.values[index],
                      );
                      mySetState(() {
                        for (int i = 0; i < selectedSortModes.length; i++) {
                          selectedSortModes[i] = (i == index);
                        }
                      });
                    },
                    isSelected: selectedSortModes,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.red[700],
                    selectedColor: Colors.white,
                    fillColor: Colors.red[200],
                    color: Colors.red[400],
                    children: SortMode.values
                        .map((SortMode e) => Text(e.name))
                        .toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(context.translate().show_multilingual),
                      Switch(
                        value: filterEdited.showMultiLingual,
                        onChanged: (bool value) {
                          mySetState(() {
                            filterEdited = filterEdited.copyWith(
                              showMultiLingual: value,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        context.translate().show_other_types,
                      ),
                      Switch(
                        value: filterEdited.showOtherTypes,
                        onChanged: (bool value) {
                          mySetState(() {
                            filterEdited = filterEdited.copyWith(
                              showOtherTypes: value,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                  AppGap.regularHeight(),
                  TextButton(
                    onPressed: () {
                      onFilterChanged.call(filterEdited);
                      Navigator.of(context).pop();
                    },
                    child: Text(context.translate().validate),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

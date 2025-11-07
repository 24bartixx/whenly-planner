import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/deadlines/data/models/deadline.dart';
import 'package:whenly_planner/features/deadlines/data/repos/deadlines_repository.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class DeadlineTile extends ConsumerStatefulWidget {
  const DeadlineTile({super.key, required this.deadline});

  final Deadline deadline;

  @override
  ConsumerState<DeadlineTile> createState() => _DeadlineTileState();
}

class _DeadlineTileState extends ConsumerState<DeadlineTile> {
  Deadline get deadline => widget.deadline;

  Offset _tapPosition = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _getTapPosition,
      onLongPress: () {
        _showPopupMenu(context, deadline.id);
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadiuses.large),
        ),
        child: ListTile(
          title: Row(
            children: [
              Checkbox(
                value: deadline.isMet,
                onChanged: (_) {
                  ref.read(
                    updateIsMetInDeadlineProvider(
                      id: deadline.id,
                      newIsMet: !deadline.isMet,
                    ),
                  );
                },
              ),
              Text(deadline.title),
            ],
          ),
        ),
      ),
    );
  }

  void _getTapPosition(TapDownDetails tapPosition) {
    setState(() {
      _tapPosition = tapPosition.globalPosition;
    });
  }

  void _showPopupMenu(BuildContext context, int id) async {
    final RenderObject? overlay = Overlay.of(
      context,
      rootOverlay: true,
    ).context.findRenderObject();

    if (overlay is! RenderBox) {
      // TODO: handle overlay error
      return;
    }

    final result = await showMenu(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 0, 0),
        Offset.zero & overlay.size,
      ),
      constraints: const BoxConstraints(minWidth: 200, maxWidth: 280),
      color: context.colorTheme.surfaceContainerLowest,
      items: [
        PopupMenuItem(
          value: "edit",
          child: Row(
            children: [
              Icon(Icons.edit, size: IconSizes.medium),
              const SizedBox(width: AppWidths.medium),
              Text(
                context.l10n.popup_edit,
                style: context.textTheme.titleSmallDark,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: "delete",
          child: Row(
            children: [
              Icon(
                Icons.delete,
                color: context.colorTheme.error,
                size: IconSizes.medium,
              ),
              SizedBox(width: AppWidths.medium),
              Text(
                context.l10n.popup_delete,
                style: context.textTheme.titleSmallDark.copyWith(
                  color: context.colorTheme.error,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    switch (result) {
      case 'edit':
        // TODO: edit handling
        debugPrint("Edited");
        break;
      case 'delete':
        // TODO: delete handling
        ref.read(deleteDeadlineProvider(id: id));
        debugPrint('Deleted');
        break;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/common/widgets/custom_filled_button.dart';
import 'package:whenly_planner/common/widgets/custom_text_field.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/deadlines/data/repos/deadlines_repository.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class AddDeadlineBottomSheet extends ConsumerStatefulWidget {
  const AddDeadlineBottomSheet({super.key});

  @override
  ConsumerState<AddDeadlineBottomSheet> createState() =>
      _AddDeadlineBottomSheetState();
}

class _AddDeadlineBottomSheetState
    extends ConsumerState<AddDeadlineBottomSheet> {
  final _titleController = TextEditingController();

  // state
  bool _isMet = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bottomInset = mediaQuery.viewInsets.bottom;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: mediaQuery.size.height * 0.9),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: AppPaddings.large,
          right: AppPaddings.large,
          top: AppPaddings.huge,
          bottom: bottomInset + AppPaddings.huge,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.l10n.add_deadline,
              style: context.textTheme.titleLargeDark,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            CustomTextField(
              text: "Title",
              icon: null,
              controller: _titleController,
            ),
            SizedBox(height: 10),
            CheckboxListTile(
              title: Text(context.l10n.new_deadline_met_label),
              value: _isMet,
              activeColor: context.colorTheme.secondary,
              onChanged: (bool? v) => setState(() => _isMet = v ?? false),
            ),
            SizedBox(height: 12),
            CustomFilledButton(
              onPressed: _addDeadline,
              child: Text(context.l10n.add_deadline),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addDeadline() async {
    final title = _titleController.text.trim();

    if (title.isEmpty) {
      // TODO: action to inform
      return;
    }

    await ref.read(
      insertDeadlineProvider(
        title: title,
        isMet: _isMet,
        ddl: DateTime.now(),
      ).future,
    );

    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
}

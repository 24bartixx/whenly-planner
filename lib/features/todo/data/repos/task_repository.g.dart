// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(insertTask)
const insertTaskProvider = InsertTaskFamily._();

final class InsertTaskProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const InsertTaskProvider._({
    required InsertTaskFamily super.from,
    required ({
      String title,
      bool done,
      TaskPriority? priority,
      DateTime taskDdl,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'insertTaskProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$insertTaskHash();

  @override
  String toString() {
    return r'insertTaskProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument =
        this.argument
            as ({
              String title,
              bool done,
              TaskPriority? priority,
              DateTime taskDdl,
            });
    return insertTask(
      ref,
      title: argument.title,
      done: argument.done,
      priority: argument.priority,
      taskDdl: argument.taskDdl,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is InsertTaskProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$insertTaskHash() => r'279c438bca23ffecdf178c45944b8f541102aa6c';

final class InsertTaskFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<void>,
          ({String title, bool done, TaskPriority? priority, DateTime taskDdl})
        > {
  const InsertTaskFamily._()
    : super(
        retry: null,
        name: r'insertTaskProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  InsertTaskProvider call({
    required String title,
    bool done = false,
    TaskPriority? priority,
    required DateTime taskDdl,
  }) => InsertTaskProvider._(
    argument: (title: title, done: done, priority: priority, taskDdl: taskDdl),
    from: this,
  );

  @override
  String toString() => r'insertTaskProvider';
}

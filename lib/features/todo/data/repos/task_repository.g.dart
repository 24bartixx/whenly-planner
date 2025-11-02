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

@ProviderFor(watchDayTasks)
const watchDayTasksProvider = WatchDayTasksFamily._();

final class WatchDayTasksProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<model.Task>>,
          List<model.Task>,
          Stream<List<model.Task>>
        >
    with $FutureModifier<List<model.Task>>, $StreamProvider<List<model.Task>> {
  const WatchDayTasksProvider._({
    required WatchDayTasksFamily super.from,
    required DateTime super.argument,
  }) : super(
         retry: null,
         name: r'watchDayTasksProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$watchDayTasksHash();

  @override
  String toString() {
    return r'watchDayTasksProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<model.Task>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<model.Task>> create(Ref ref) {
    final argument = this.argument as DateTime;
    return watchDayTasks(ref, day: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WatchDayTasksProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$watchDayTasksHash() => r'17e41fb9adc10ce8aa59e1979877e38369cba326';

final class WatchDayTasksFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<model.Task>>, DateTime> {
  const WatchDayTasksFamily._()
    : super(
        retry: null,
        name: r'watchDayTasksProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WatchDayTasksProvider call({required DateTime day}) =>
      WatchDayTasksProvider._(argument: day, from: this);

  @override
  String toString() => r'watchDayTasksProvider';
}

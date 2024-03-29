// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/worker.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8912162639546689314),
      name: 'Worker',
      lastPropertyId: const IdUid(4, 2647911738995954918),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7192782687588611155),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 2328113275660406570),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2647911738995954918),
            name: 'workerId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 9084371541793684763),
            relationTarget: 'Worker')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 8912162639546689314),
      lastIndexId: const IdUid(2, 9084371541793684763),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [8392123212142139240],
      retiredPropertyUids: const [7781420905752813459],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Worker: EntityDefinition<Worker>(
        model: _entities[0],
        toOneRelations: (Worker object) => [object.worker],
        toManyRelations: (Worker object) => {},
        getId: (Worker object) => object.id,
        setId: (Worker object, int id) {
          object.id = id;
        },
        objectToFB: (Worker object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(5);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, nameOffset);
          fbb.addInt64(3, object.worker.targetId);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Worker(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''));
          object.worker.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.worker.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Worker] entity fields to define ObjectBox queries.
class Worker_ {
  /// see [Worker.id]
  static final id = QueryIntegerProperty<Worker>(_entities[0].properties[0]);

  /// see [Worker.name]
  static final name = QueryStringProperty<Worker>(_entities[0].properties[1]);

  /// see [Worker.worker]
  static final worker =
      QueryRelationToOne<Worker, Worker>(_entities[0].properties[2]);
}

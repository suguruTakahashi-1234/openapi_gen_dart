//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_update_folder.g.dart';

/// Folder returned by the update request.
///
/// Properties:
/// * [uuid] - UUID of the folder.
/// * [name] - Name of the folder.
/// * [icon] - Icon of the folder.
@BuiltValue()
abstract class FoldersUpdateFolder
    implements Built<FoldersUpdateFolder, FoldersUpdateFolderBuilder> {
  /// UUID of the folder.
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// Name of the folder.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Icon of the folder.
  @BuiltValueField(wireName: r'icon')
  int? get icon;

  FoldersUpdateFolder._();

  factory FoldersUpdateFolder([void updates(FoldersUpdateFolderBuilder b)]) =
      _$FoldersUpdateFolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersUpdateFolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersUpdateFolder> get serializer =>
      _$FoldersUpdateFolderSerializer();
}

class _$FoldersUpdateFolderSerializer
    implements PrimitiveSerializer<FoldersUpdateFolder> {
  @override
  final Iterable<Type> types = const [
    FoldersUpdateFolder,
    _$FoldersUpdateFolder
  ];

  @override
  final String wireName = r'FoldersUpdateFolder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersUpdateFolder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uuid != null) {
      yield r'uuid';
      yield serializers.serialize(
        object.uuid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoldersUpdateFolder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FoldersUpdateFolderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uuid = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.icon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FoldersUpdateFolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersUpdateFolderBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_create_folder.g.dart';

/// Folder contained inside a create folder operation.
///
/// Properties:
/// * [name] - Name of the new folder.
/// * [icon] - Icon of the new folder.
@BuiltValue()
abstract class FoldersCreateFolder
    implements Built<FoldersCreateFolder, FoldersCreateFolderBuilder> {
  /// Name of the new folder.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Icon of the new folder.
  @BuiltValueField(wireName: r'icon')
  int? get icon;

  FoldersCreateFolder._();

  factory FoldersCreateFolder([void updates(FoldersCreateFolderBuilder b)]) =
      _$FoldersCreateFolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersCreateFolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersCreateFolder> get serializer =>
      _$FoldersCreateFolderSerializer();
}

class _$FoldersCreateFolderSerializer
    implements PrimitiveSerializer<FoldersCreateFolder> {
  @override
  final Iterable<Type> types = const [
    FoldersCreateFolder,
    _$FoldersCreateFolder
  ];

  @override
  final String wireName = r'FoldersCreateFolder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersCreateFolder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    FoldersCreateFolder object, {
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
    required FoldersCreateFolderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  FoldersCreateFolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersCreateFolderBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_get_all_folder.g.dart';

/// Folder in a response to a get all folders request.
///
/// Properties:
/// * [uuid] - UUID of the folder.
/// * [name] - Name of the folder.
/// * [icon] - Icon of the folder.
@BuiltValue()
abstract class FoldersGetAllFolder
    implements Built<FoldersGetAllFolder, FoldersGetAllFolderBuilder> {
  /// UUID of the folder.
  @BuiltValueField(wireName: r'uuid')
  String? get uuid;

  /// Name of the folder.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Icon of the folder.
  @BuiltValueField(wireName: r'icon')
  int? get icon;

  FoldersGetAllFolder._();

  factory FoldersGetAllFolder([void updates(FoldersGetAllFolderBuilder b)]) =
      _$FoldersGetAllFolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersGetAllFolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersGetAllFolder> get serializer =>
      _$FoldersGetAllFolderSerializer();
}

class _$FoldersGetAllFolderSerializer
    implements PrimitiveSerializer<FoldersGetAllFolder> {
  @override
  final Iterable<Type> types = const [
    FoldersGetAllFolder,
    _$FoldersGetAllFolder
  ];

  @override
  final String wireName = r'FoldersGetAllFolder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersGetAllFolder object, {
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
    FoldersGetAllFolder object, {
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
    required FoldersGetAllFolderBuilder result,
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
  FoldersGetAllFolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersGetAllFolderBuilder();
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

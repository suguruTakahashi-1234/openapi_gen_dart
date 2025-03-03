//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:petstore_api/src/model/folders_get_all_folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_get_all_response_body.g.dart';

/// Response to a get all folders request.
///
/// Properties:
/// * [folder] - Folders
@BuiltValue()
abstract class FoldersGetAllResponseBody
    implements
        Built<FoldersGetAllResponseBody, FoldersGetAllResponseBodyBuilder> {
  /// Folders
  @BuiltValueField(wireName: r'folder')
  BuiltList<FoldersGetAllFolder>? get folder;

  FoldersGetAllResponseBody._();

  factory FoldersGetAllResponseBody(
          [void updates(FoldersGetAllResponseBodyBuilder b)]) =
      _$FoldersGetAllResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersGetAllResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersGetAllResponseBody> get serializer =>
      _$FoldersGetAllResponseBodySerializer();
}

class _$FoldersGetAllResponseBodySerializer
    implements PrimitiveSerializer<FoldersGetAllResponseBody> {
  @override
  final Iterable<Type> types = const [
    FoldersGetAllResponseBody,
    _$FoldersGetAllResponseBody
  ];

  @override
  final String wireName = r'FoldersGetAllResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersGetAllResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType:
            const FullType.nullable(BuiltList, [FullType(FoldersGetAllFolder)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoldersGetAllResponseBody object, {
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
    required FoldersGetAllResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(FoldersGetAllFolder)]),
          ) as BuiltList<FoldersGetAllFolder>?;
          if (valueDes == null) continue;
          result.folder.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FoldersGetAllResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersGetAllResponseBodyBuilder();
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

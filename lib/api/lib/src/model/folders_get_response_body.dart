//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/folders_get_folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_get_response_body.g.dart';

/// Response to a folder get request.
///
/// Properties:
/// * [folder]
@BuiltValue()
abstract class FoldersGetResponseBody
    implements Built<FoldersGetResponseBody, FoldersGetResponseBodyBuilder> {
  @BuiltValueField(wireName: r'folder')
  FoldersGetFolder? get folder;

  FoldersGetResponseBody._();

  factory FoldersGetResponseBody(
          [void updates(FoldersGetResponseBodyBuilder b)]) =
      _$FoldersGetResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersGetResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersGetResponseBody> get serializer =>
      _$FoldersGetResponseBodySerializer();
}

class _$FoldersGetResponseBodySerializer
    implements PrimitiveSerializer<FoldersGetResponseBody> {
  @override
  final Iterable<Type> types = const [
    FoldersGetResponseBody,
    _$FoldersGetResponseBody
  ];

  @override
  final String wireName = r'FoldersGetResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersGetResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType(FoldersGetFolder),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoldersGetResponseBody object, {
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
    required FoldersGetResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoldersGetFolder),
          ) as FoldersGetFolder;
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
  FoldersGetResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersGetResponseBodyBuilder();
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

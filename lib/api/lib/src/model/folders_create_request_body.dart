//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/folders_create_folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_create_request_body.g.dart';

/// Body of a folder create request.
///
/// Properties:
/// * [folder]
@BuiltValue()
abstract class FoldersCreateRequestBody
    implements
        Built<FoldersCreateRequestBody, FoldersCreateRequestBodyBuilder> {
  @BuiltValueField(wireName: r'folder')
  FoldersCreateFolder? get folder;

  FoldersCreateRequestBody._();

  factory FoldersCreateRequestBody(
          [void updates(FoldersCreateRequestBodyBuilder b)]) =
      _$FoldersCreateRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersCreateRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersCreateRequestBody> get serializer =>
      _$FoldersCreateRequestBodySerializer();
}

class _$FoldersCreateRequestBodySerializer
    implements PrimitiveSerializer<FoldersCreateRequestBody> {
  @override
  final Iterable<Type> types = const [
    FoldersCreateRequestBody,
    _$FoldersCreateRequestBody
  ];

  @override
  final String wireName = r'FoldersCreateRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersCreateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType(FoldersCreateFolder),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoldersCreateRequestBody object, {
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
    required FoldersCreateRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoldersCreateFolder),
          ) as FoldersCreateFolder;
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
  FoldersCreateRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersCreateRequestBodyBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:petstore_api/src/model/folders_update_folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_update_request_body.g.dart';

/// The body of a folder update request.
///
/// Properties:
/// * [folder]
@BuiltValue()
abstract class FoldersUpdateRequestBody
    implements
        Built<FoldersUpdateRequestBody, FoldersUpdateRequestBodyBuilder> {
  @BuiltValueField(wireName: r'folder')
  FoldersUpdateFolder? get folder;

  FoldersUpdateRequestBody._();

  factory FoldersUpdateRequestBody(
          [void updates(FoldersUpdateRequestBodyBuilder b)]) =
      _$FoldersUpdateRequestBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersUpdateRequestBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersUpdateRequestBody> get serializer =>
      _$FoldersUpdateRequestBodySerializer();
}

class _$FoldersUpdateRequestBodySerializer
    implements PrimitiveSerializer<FoldersUpdateRequestBody> {
  @override
  final Iterable<Type> types = const [
    FoldersUpdateRequestBody,
    _$FoldersUpdateRequestBody
  ];

  @override
  final String wireName = r'FoldersUpdateRequestBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersUpdateRequestBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.folder != null) {
      yield r'folder';
      yield serializers.serialize(
        object.folder,
        specifiedType: const FullType(FoldersUpdateFolder),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoldersUpdateRequestBody object, {
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
    required FoldersUpdateRequestBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'folder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FoldersUpdateFolder),
          ) as FoldersUpdateFolder;
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
  FoldersUpdateRequestBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersUpdateRequestBodyBuilder();
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

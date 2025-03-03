//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_create_response_body.g.dart';

/// Response to a folder create request.
///
/// Properties:
/// * [folderUuid] - The UUID of the newly created folder.
@BuiltValue()
abstract class FoldersCreateResponseBody
    implements
        Built<FoldersCreateResponseBody, FoldersCreateResponseBodyBuilder> {
  /// The UUID of the newly created folder.
  @BuiltValueField(wireName: r'folderUuid')
  String? get folderUuid;

  FoldersCreateResponseBody._();

  factory FoldersCreateResponseBody(
          [void updates(FoldersCreateResponseBodyBuilder b)]) =
      _$FoldersCreateResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersCreateResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersCreateResponseBody> get serializer =>
      _$FoldersCreateResponseBodySerializer();
}

class _$FoldersCreateResponseBodySerializer
    implements PrimitiveSerializer<FoldersCreateResponseBody> {
  @override
  final Iterable<Type> types = const [
    FoldersCreateResponseBody,
    _$FoldersCreateResponseBody
  ];

  @override
  final String wireName = r'FoldersCreateResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersCreateResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.folderUuid != null) {
      yield r'folderUuid';
      yield serializers.serialize(
        object.folderUuid,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoldersCreateResponseBody object, {
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
    required FoldersCreateResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'folderUuid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.folderUuid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FoldersCreateResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersCreateResponseBodyBuilder();
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

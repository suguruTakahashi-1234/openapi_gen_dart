//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folders_update_response_body.g.dart';

/// Body of a response to a folder update request.
///
/// Properties:
/// * [folderUuid] - UUID of the updated folder.
@BuiltValue()
abstract class FoldersUpdateResponseBody
    implements
        Built<FoldersUpdateResponseBody, FoldersUpdateResponseBodyBuilder> {
  /// UUID of the updated folder.
  @BuiltValueField(wireName: r'folderUuid')
  String? get folderUuid;

  FoldersUpdateResponseBody._();

  factory FoldersUpdateResponseBody(
          [void updates(FoldersUpdateResponseBodyBuilder b)]) =
      _$FoldersUpdateResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoldersUpdateResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoldersUpdateResponseBody> get serializer =>
      _$FoldersUpdateResponseBodySerializer();
}

class _$FoldersUpdateResponseBodySerializer
    implements PrimitiveSerializer<FoldersUpdateResponseBody> {
  @override
  final Iterable<Type> types = const [
    FoldersUpdateResponseBody,
    _$FoldersUpdateResponseBody
  ];

  @override
  final String wireName = r'FoldersUpdateResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoldersUpdateResponseBody object, {
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
    FoldersUpdateResponseBody object, {
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
    required FoldersUpdateResponseBodyBuilder result,
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
  FoldersUpdateResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoldersUpdateResponseBodyBuilder();
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

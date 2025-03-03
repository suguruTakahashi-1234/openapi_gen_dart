//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_response_body.g.dart';

/// Structure of an error message.
///
/// Properties:
/// * [message] - The short message describing the error.
/// * [detail] - A detailed explanation detailing the error.
/// * [internalCode] - The error code for error correction purposes.
@BuiltValue()
abstract class ErrorResponseBody
    implements Built<ErrorResponseBody, ErrorResponseBodyBuilder> {
  /// The short message describing the error.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// A detailed explanation detailing the error.
  @BuiltValueField(wireName: r'detail')
  String? get detail;

  /// The error code for error correction purposes.
  @BuiltValueField(wireName: r'internalCode')
  int? get internalCode;

  ErrorResponseBody._();

  factory ErrorResponseBody([void updates(ErrorResponseBodyBuilder b)]) =
      _$ErrorResponseBody;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorResponseBodyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorResponseBody> get serializer =>
      _$ErrorResponseBodySerializer();
}

class _$ErrorResponseBodySerializer
    implements PrimitiveSerializer<ErrorResponseBody> {
  @override
  final Iterable<Type> types = const [ErrorResponseBody, _$ErrorResponseBody];

  @override
  final String wireName = r'ErrorResponseBody';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorResponseBody object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.internalCode != null) {
      yield r'internalCode';
      yield serializers.serialize(
        object.internalCode,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponseBody object, {
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
    required ErrorResponseBodyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.detail = valueDes;
          break;
        case r'internalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.internalCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorResponseBody deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorResponseBodyBuilder();
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

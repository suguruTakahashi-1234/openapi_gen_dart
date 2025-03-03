// Openapi Generator last run: : 2025-03-03T18:03:16.191792
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  inputSpec: InputSpec(path: 'openapi/openapi-spec.yaml'),
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'lib/api',
  skipIfSpecIsUnchanged: false,
)
class Example {}
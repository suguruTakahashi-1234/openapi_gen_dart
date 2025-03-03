// Openapi Generator last run: : 2025-03-03T18:30:26.547418
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  inputSpec: InputSpec(path: 'openapi/openapi-spec.yaml'),
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'generated/openapi_generator',
  skipIfSpecIsUnchanged: false,
)
class Example {}
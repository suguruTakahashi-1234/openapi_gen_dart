// Openapi Generator last run: : 2024-12-10T11:20:29.808787

import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
   additionalProperties:
   DioProperties(pubName: 'petstore_api', pubAuthor: 'Johnny dep..'),
   inputSpec:
   RemoteSpec(path: 'https://petstore3.swagger.io/api/v3/openapi.json'),
   typeMappings: {'Pet': 'ExamplePet'},
   generatorName: Generator.dio,
   runSourceGenOnOutput: true,
   outputDirectory: 'lib/',
)

class Example {}

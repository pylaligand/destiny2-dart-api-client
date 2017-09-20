### Generating the bindings

1. Download and compile [swagger-codegen](https://github.com/swagger-api/swagger-codegen);
2. Delete the `lib` and `docs` directories;
3. Run the codegen tool with the config at `data/swagger-codegen.config.json`
   and the API file at `data/openapi-2.json`.

Note that the stable version of _swagger-codegen_ won't work as it does not yet
contain necessary changes to the Dart bindings generator.

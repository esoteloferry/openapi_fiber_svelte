oa-gen-types-test:
	oapi-codegen -generate types -o "cmd/oapi-codegen/oapi-types.gen.go" -package "openapi_test" "./api/openapi/openapi.yaml"
oa-gen-test:
	oapi-codegen -generate fiber-server -o "cmd/oapi-codegen/oapi-server.gen.go" -package "openapi_test" "./api/openapi/openapi.yaml"

oa: oa-gen-types-test oa-gen-test


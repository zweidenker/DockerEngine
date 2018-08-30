# DockerEngine

This is implemented using Docker Engine API yaml file from

https://docs.docker.com/engine/api/v1.37/#

converted the file to json with

$ alias yaml-to-json='docker run -i ingy/yaml-to-json'
$ cat swagger.yaml | yaml-to-json | jq . > swagger.json

and converted it from swagger 2.0 to openapi 3.0.0 with

https://openapi-converter.herokuapp.com/




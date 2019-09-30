## Pi Weather API Documentation
To start the local swagger UI documentation, run:

```
npm install
npm start
```

By default the documentation will be available on port 8080, http://localhost:8080/api-docs, but this can be changed by adding the following parameter when starting the project:

```
npm start -- --port=80
```

## Generating Spring stub code
To generate server code stubs which make use of the Spring framework use:

```
swagger-codegen generate -i ./swagger.json -l spring -o ../pi-weather-app-spring -c ./swagger-codegen-spring-options.json
```

(ensuring the `swagger-codegen` is installed and any pre-requisites are satisfied - see https://github.com/swagger-api/swagger-codegen).
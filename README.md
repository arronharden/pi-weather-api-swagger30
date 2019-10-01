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
npn run codegen
```

This will create the Spring enabled Java project at `../pi-weather-app-spring`.
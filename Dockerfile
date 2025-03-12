# Usa una imagen de OpenJDK
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el código del proyecto y compila
COPY . /app
RUN ./mvnw package -DskipTests

# Expone el puerto 8080
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "target/impotechco-1.0.0.jar"]

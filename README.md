
# Hello World App

Esta es una aplicación web simple construida con Node.js, dockerizada y desplegada en Kubernetes usando Helm.

## Requisitos

- Node.js
- Docker
- Minikube
- Helm
- Kubernetes
- GitHub Actions

## Instalación

1. **Instalar dependencias:**

   ```bash
   npm install
   ```

2. **Construir la imagen Docker:**

   ```bash
   docker build -t hello-world-app .
   ```

3. **Ejecutar el contenedor Docker:**

   ```bash
   docker run -p 3000:3000 hello-world-app
   ```

4. **Iniciar Minikube:**

   ```bash
   minikube start
   ```

5. **Desplegar la aplicación con Helm:**

   Asegúrate de tener el chart de Helm en la carpeta `hello-world-chart`. Luego, usa el siguiente comando para desplegar la aplicación en tu clúster de Kubernetes:

   ```bash
   helm install hello-world hello-world-chart
   ```

   Esto instalará tu aplicación como un release llamado `hello-world` utilizando el chart ubicado en `hello-world-chart`.

## Uso

Una vez desplegada la aplicación, puedes acceder a ella a través de la URL proporcionada por Minikube. Para obtener la URL, ejecuta el siguiente comando:

```bash
minikube service hello-world --url
```

# Usar una imagen base de Node.js versión 14
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo package.json y package-lock.json (si existe)
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos de tu proyecto al contenedor
COPY . .

# Exponer el puerto 3000 para que esté accesible externamente
EXPOSE 3000

# Comando que se ejecutará al iniciar el contenedor
CMD ["node", "index.js"]

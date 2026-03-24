# 1. Imagen base: Usamos Node.js 20 en la versión Alpine Linux (ultraligera)
FROM node:20-alpine

# 2. Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos los archivos primero
# Esto nos ayuda a que el pipeline sea más rápido si no cambiamos dependencias
COPY package*.json ./

# 4. Instalamos las dependencias
RUN npm install

# 5. Copiamos el resto del código
COPY . .

# 6. Exponemos el puerto 8080 (donde escucha nuestra API)
EXPOSE 8080

# 7. El comando para arrancar la aplicación
CMD ["npm", "start"]
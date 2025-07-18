# Usa una imagen base de Nginx
FROM nginx:alpine

# Elimina la configuración por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia tus archivos al contenedor
COPY . /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Comando por defecto
CMD ["nginx", "-g", "daemon off;"]

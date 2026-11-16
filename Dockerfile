# Utilizar imagen base ligera de Nginx
FROM nginx:alpine

# Copiar archivos estáticos al directorio público de Nginx
COPY src/index.html /usr/share/nginx/html/index.html
COPY src/styles.css /usr/share/nginx/html/styles.css

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
# Usar una imagen base de Python
FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY src/ /app/

# Instalar dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Especificar el comando para ejecutar la aplicación
CMD ["python", "main.py"]

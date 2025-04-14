# Usar una imagen base oficial de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos al contenedor
COPY requirements.txt requirements.txt
RUN pip install  -r requirements.txt

COPY . .

# Comando para correr la app
CMD ["python", "app.py"]

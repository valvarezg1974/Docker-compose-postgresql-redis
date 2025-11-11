# Imagen base
FROM python:3.10-slim

# Directorio de trabajo
WORKDIR /app

# Copiar dependencias y código fuente
#COPY requirements.txt .
#RUN pip install -r requirements.txt
RUN echo 'echo "Hello, World from ENTRYPOINT!"' > hello.sh 
RUN chmod +x hello.sh
#COPY hello.py .

# Exponer puerto y definir comando por defecto
EXPOSE 8080
#CMD ["python", "hello.py"]
ENTRYPOINT ["sh","./hello.sh"]
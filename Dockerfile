# Dockerfile para la app de clima con Gradio
FROM python:3.11-slim

WORKDIR /app


# Copiar archivos necesarios
COPY clima.py ./
COPY requirements.txt ./

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 7860

CMD ["python", "clima.py"]

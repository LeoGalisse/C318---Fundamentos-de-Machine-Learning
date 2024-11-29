FROM python:3.10

COPY requirements.txt /app/

WORKDIR /app

# Exponha a porta padrão do Jupyter
EXPOSE 8888

# Instale as dependências do sistema
RUN apt-get update && apt-get install -y python3-distutils
RUN pip install -r requirements.txt

# Comando padrão para iniciar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

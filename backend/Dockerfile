# Use uma Imagem Official do Python
FROM python:3

# Adicionando um usuário de sistema
RUN adduser --system --home /home/spotmusic  spotmusic
USER myapp

# Definindo o diretório onde a aplicação será armazenada
WORKDIR /home/spotmusic

#Definindo o local onde o binário do gunicorn é instalado
ENV PATH="/home/spotmusic/.local/bin:${PATH}"

# Copiar os arquivos da pasta local para dentro do container
COPY --chown=spotmusic:nogroup --chmod=400 app.py db.py requirements.txt /home/spotmusic/

# Instalar as dependências de Python de acordo com o que foi desenvolvido na aplicação e que está declarado no arquivo requirements.txt.
RUN pip install --user --trusted-host pypi.python.org -r requirements.txt

# Garante que será iniciado a aplicação.
CMD ["gunicorn", "app:app"]
# Usando uma imagem do node 14 com o debian
FROM node:14
# Criar a pasta do projeto e dar as permissoes para o usuario do node (Criado pela imagem do node)
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
# Definir o diretorio atual do container
WORKDIR /home/node/app
# Copiar o package.json para a pasta atual do container
COPY package*.json ./
# Definir o usuario que esta executando os comandos
USER node
# Instalar as dependencias do proj no container
RUN npm install
# Copiar os arquivos do proj para o container
COPY --chown=node:node . .
# Informa o Docker que o container vai escutar essa porta
EXPOSE 3000
# Executa o projeto
CMD ["node", "app.js"]

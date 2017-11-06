FROM node:6.11-slim
RUN npm install -g @google-cloud/functions-emulator
COPY config.json /root/.config/configstore/@google-cloud/functions-emulator/config.json
CMD ["functions", "start", "--tail"]

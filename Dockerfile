# Використовуємо офіційний Node.js образ
FROM node:18

# Встановлюємо робочий каталог всередині контейнера
WORKDIR /usr/src/app

# Копіюємо package.json та package-lock.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо всі файли проєкту в контейнер
COPY . .

# Відкриваємо порт 5000
EXPOSE 5000

# Запускаємо сервер
CMD [ "npm", "start" ]

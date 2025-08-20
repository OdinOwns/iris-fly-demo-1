FROM node:20-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build || true
FROM node:20-alpine
WORKDIR /app
ENV PORT=8080
COPY --from=build /app .
CMD ["npm","start"]

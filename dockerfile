FROM node:20-slim AS build

WORKDIR /app

COPY package*.json ./

RUN apt-get update && \
    apt-get install -y python3 make g++ && \
    npm ci && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . .

ENV NUXT_FONT_FALLBACK=true
ENV NODE_ENV=production
ENV NODE_OPTIONS="--max-old-space-size=4096"

RUN npm run build

FROM node:20-slim AS runtime
WORKDIR /app

COPY --from=build /app/.output ./.output
COPY --from=build /app/package*.json ./

RUN npm ci --omit=dev && npm cache clean --force

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]

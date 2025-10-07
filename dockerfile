FROM node:22-alpine AS build

WORKDIR /app
RUN corepack enable

COPY package.json pnpm-lock.yaml .npmrc ./

RUN pnpm i

COPY . ./

ENV NUXT_FONT_FALLBACK=true
ENV NODE_ENV=production
ENV NODE_OPTIONS="--max-old-space-size=4096"

RUN pnpm run build

FROM node:22-alpine
WORKDIR /app

COPY --from=build /app/.output ./.output
COPY --from=build /app/package*.json ./


EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]

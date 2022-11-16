FROM lukechannings/deno:v1.28.0

EXPOSE 8081
WORKDIR /app
USER deno

COPY . ./
RUN deno cache src/index.ts

CMD ["run", "--allow-read", "--allow-net", "--allow-env", "src/index.ts"]

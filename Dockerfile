FROM denoland/deno
 
WORKDIR /app
 
COPY * /app

RUN deno cache main.ts
 
ARG PORT
EXPOSE ${PORT:-8000}

# --allow-net --allow-env --allow-read --allow-write --allow-ffi --unstable-broadcast-channel 
CMD ["run", "--allow-net", "--allow-env", "--allow-read", "--allow-write", "--allow-ffi", "--unstable-broadcast-channel", "main.ts"]
FROM ghost:0.10.1
RUN npm install -q --no-color ghost-s3-storage-adapter pg && npm cache clean
RUN mkdir -p content/storage && cp -rf node_modules/ghost-s3-storage-adapter content/storage/s3
RUN chown -R user .
ADD config.js $GHOST_CONTENT/config.js

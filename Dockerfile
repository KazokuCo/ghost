FROM ghost:0.10.1
RUN npm install -q --no-color ghost-storage-adapter-s3 pg && npm cache clean
RUN mkdir -p content/storage && cp -rf node_modules/ghost-storage-adapter-s3 content/storage/s3
RUN chown -R user content
ADD config.js $GHOST_CONTENT/config.js

FROM ghost:0.10.1
RUN cd $GHOST_SOURCE && npm install -q --no-color ghost-storage-adapter-s3 pg && npm cache clean
RUN mkdir -p $GHOST_SOURCE/content/storage/s3/ && echo "module.exports = require('ghost-storage-adapter-s3');" > $GHOST_SOURCE/content/storage/s3/index.js
RUN chown -R user content
ADD config.js $GHOST_CONTENT/config.js

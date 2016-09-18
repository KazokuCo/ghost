FROM ghost:0.9
RUN cd $GHOST_SOURCE && npm install -q --no-color ghost-s3-storage pg && npm cache clean
RUN mkdir -p $GHOST_CONTENT/storage/s3 && echo 'module.exports = require('ghost-s3-storage');' > $GHOST_CONTENT/storage/s3/index.js
RUN chown -R user content
ADD config.js $GHOST_CONTENT/config.js

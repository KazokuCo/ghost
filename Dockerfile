FROM ghost:0.9
RUN npm install -q --no-color ghost-s3-storage pg && npm cache clean
RUN mkdir -p content/storage/ghost-s3 && echo "module.exports = require('ghost-s3-storage');" > content/storage/ghost-s3/index.js
RUN chown -R user .
ADD config.js config.js

# Reset Ghost's entrypoint nonsense >_>
ENTRYPOINT []
CMD ["npm", "start"]

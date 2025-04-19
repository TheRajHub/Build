#!/bin/bash

# Initialize npm project
npm init -y
sed -i 's/{/{\n  "type": "module",/' package.json


# Replace the scripts section safely using sed
sed -i '/"scripts": {/,/},/c\
  "scripts": {\
    "test": "echo \\"Error: no test specified\\" && exit 1",\
    "dev": "node index.js"\
  },' package.json





echo "creating the main files"
touch app.js constant.js index.js .env .gitignore Readme.md

echo "creating the folders"
mkdir controllers db middlewares models routes utils

echo "node_modules/" >> .gitignore
echo "*.env" >> .gitignore
echo ".env.*" >> .gitignore
echo ".env" >> .gitignore
echo "/dist" >> .gitignore


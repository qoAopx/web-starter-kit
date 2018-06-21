#!/bin/bash
# Bootstrap project if not present
if [ ! -f /usr/src/app/package.json ]; then
  echo "There's no project in /usr/src/app. Did you forget to mount volume?"
  echo "Press Ctrl-C to abort, or else will initialize new project in 5 seconds..."
  sleep 5 && CONTINUE=true
  if [ -z $CONTINUE ]; then
    exit 1
  fi
  tar -C /web-starter-kit/ --exclude node_modules -cf - . | tar -C /usr/src/app -xf -
fi

if [ ! $(ls -A /usr/src/app/node_modules)]; then
  ln -sfn /web-starter-kit/node_modules/* /usr/src/app/node_modules/
fi

if [ -z $@ ]; then
  gulp serve
else
  if [ $@ == "build" ]; then
    gulp
  else
    gulp $@
  fi
fi


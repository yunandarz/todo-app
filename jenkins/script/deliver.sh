#!/usr/bin/env sh

echo 'The following "npm" command builds your application for'
echo 'production in the local "build" directory (i.e. within the'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
set -x
yarn install --production
set +x

echo 'The following "npm" command runs your application in'
echo 'development mode and makes the application available for web browsing.'
echo 'The "npm start" command has a trailing ampersand so that the command runs'
echo 'as a background process (i.e. asynchronously). Otherwise, this command'
echo 'can pause running builds of CI/CD applications indefinitely. "npm start"'
echo 'is followed by another command that retrieves the process ID (PID) value'
echo 'of the previously run process (i.e. "npm start") and writes this value to'
echo 'the file ".pidfile".'
set -x
node src/index.js
sleep 1
echo $! > .pidfile
set +x

echo 'Now...'
echo 'Visit http://localhost:3000 to see your application in action.'
echo '(This is why you specified the "args ''-p 3000:3000''" parameter when you'
echo 'created your initial Pipeline as a Jenkinsfile.)'
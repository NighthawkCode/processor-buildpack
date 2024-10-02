A custom buildpack for the Nighthawk processor.

It allows an app to extract the SOURCE_VERSION environment variable during the Heroku build phase, and write it to a file: `COMMIT`

Add it to your Heroku app with:
```
heroku buildpacks:add --index 1 https://github.com/NighthawkCode/processor-buildpack.git -a your-app-name
```
# Page Inspector

Page Inspector, _MetaInspector as a service_ is a simple web service that allows you to scrape web pages for its meta data using the [MetaInspector](https://github.com/jaimeiniesta/metainspector) gem.

[![page inspector screenshot](https://dl.dropboxusercontent.com/u/2268180/pageinspectordemo.png)](http://pageinspectordemo.herokuapp.com/scrape?url=https://github.com)

## Why?

To provide an easy way to get a web page attributes in JSON format.

## Deploying

This is a Sinatra app, ready to be deployed into production on your server. This is extremely easy to do on Heroku, you just need to push it and you're ready to go.

## Using it

The app has just one entry point, that accepts a single parameter for the URL to be shown, here's an example:

http://pageinspectordemo.herokuapp.com/scrape?url=https://github.com

This will fetch the URL and return its data in JSON format, that's all.

## Following redirections

This app uses the [OpenUriRedirections](https://github.com/jaimeiniesta/open_uri_redirections) gem, that patches Ruby's OpenURI to allow redirections from HTTP to HTTPS and vice versa.

## Specifying an User Agent

To be done.

# Getting development env ready

## Install gems for development

    bundle install

## Launch app in development:

We use the `rerun` gem so that it detects changes in the filesystem and reloads the app automatically.

    rerun 'ruby app.rb'

The local server will be accessible at http://localhost:4567

## License

This is free open source software uses the MIT license.

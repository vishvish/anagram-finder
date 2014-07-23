# Anagram Server

This is a basic server providing anagrams of words.

## Install

`bundle install`

## Testing

`rake test`

## Running locally

`rackup config.ru`

Visit [http://localhost:2112](http://localhost:2112) to see that the server is running.

### Finding anagrams

Example:

#### A single word

[http://localhost:2112/crepitus](http://localhost:2112/crepitus)

#### Multiple words

[http://localhost:2112/crepitus,paste,kinship](http://localhost:2112/crepitus,paste,kinship)
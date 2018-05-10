# CricApi

Welcome to [index-a-page](https://index-a-page.herokuapp.com/post). The web-api-scrapper, This API allow you to get web-page content such as 1, h2 h3 tags and the links present in the hyper links. It's extremely simple, easy to use.

## Installation

Clone this application from github:

```ruby
git clone git@github.com:KarthikGangadhar/web-scrapper.git
```

And then execute:

    $ bundle install
    $ rake db:create
    $ rake db:migrate
    $ rails s

## Usage

In order to use [index-a-page](https://index-a-page.herokuapp.com/post) application, follow below curl command 

**POST Endpoint**

To add an url for web scrapping add using `/post` endpoint.

Throgh curl you can do:
```
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"posts", "attributes":{"href":"http://google.com"}}}' https://index-a-page.herokuapp.com/post
```
**GET Endpoint**

To retrive added urls and its content.

```
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X GET https://index-a-page.herokuapp.com/post

```

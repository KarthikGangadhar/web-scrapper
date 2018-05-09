# web-scrapper
This is a rails Rest api to scrape a given application by its url and will return response of its tags

In order to us this application, clone it and run following commands
#### creating db
`rake db:create`

#### migrating db
`rake db:migrate`

#### starting server
`rails s`

**POST Endpoint**

To add an url for web scrapping add using `/post` endpoint.

Throgh curl you can do:
```
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"posts", "attributes":{"href":"http://google.com"}}}' http://localhost:3000/post
```
**GET Endpoint**

To retrive added urls and its content.

```
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X GET http://localhost:3000/post

```

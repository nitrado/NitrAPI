# NITRAPI

The NITRAPI is the ♥ of Nitrado. The API delivers all information about customers and all services. The Changelog can be found [here](https://github.com/nitrado/Nitrapi/blob/master/CHANGELOG.md).
If you found a bug please let us know [here](https://github.com/nitrado/Nitrapi/issues).

## Getting started

For using the NITRAPI you need as first setup a new application. Please go to https://server.nitrado.net and login to your own nitrado.net user account. After you are logged in please register a own application at the developer area.

After you have successfully registered a new application you will receive a APP ID and a APP secret, this tokens are needed for requesting the API via oAuth2.

API Endpoint: **https://api.nitrado.net**

## Rate Limits

The API has a rate limit of 500 requests per hour for each user. You can see the amount of remaining requests in the header response. 

Example headers from HTTP response with 450/500 requests left:
```
X-RateLimit-Limit: 500
X-RateLimit-Remaining: 450
X-RateLimit-Reset: 1426202077
```

## Authentication

You need to append your access_token on every API request. There are 2 options for this:

1. Append your access token as GET parameter ?access_token=[access_token]
2. Add your access token to the request header with Authorization: Basic [access_token]

## HTTP Status Codes

| Status Code                |  Description   |
| -------------------------- | -------------: |
| 200                        | Everything works fine. The API response was successful. Data has been delivered. |
| 201                        | Everything works fine. The API response was successful. Data has been created.   |
| 401                        | Access denied. Please check your access token and scopes.                        | 
| 404                        | Invalid address. Please check url and HTTP method (GET, POST, PUT, DELETE)       | 
| 428                        | Concurrency error. The same action is already in progress. Please wait.          |
| 500                        | An error occurred. Please try it again or check your parameters. Otherwise create a bug report at Github. |
| 503                        | Maintenance. API is currently not available. Please come back in a few minutes and try it again. |

## I18n (Multilingual)

The API supports multi-language for success and error messages. It automatically takes the language of the user access token.
You can optionally pass the "locale" GET parameter on each request to overwrite the user setting.
 
If no access token and locale parameter is provided, it falls back to english.

The following languages are currently supported:

| Locale Code                |  Description   |
| -------------------------- | -------------: |
| en                         | English  |
| de                         | German   |

## JSON Responses

The API uses the [jsend](http://labs.omniti.com/labs/jsend) standard for JSON responses.

This responses are possible:

Success message:
```json
{
    status : "success",
    message : "This is a success message"
}
```

Success (single object):
```json
{
    status : "success",
    data : {
        "post" : { "id" : 1, "title" : "A blog post", "body" : "Some useful content" }
     }
}
```

Success (multiple objects):
```json
{
    status : "success",
    data : {
        "posts" : [
            { "id" : 1, "title" : "A blog post", "body" : "Some useful content" },
            { "id" : 2, "title" : "Another blog post", "body" : "More content" },
        ]
     }
}
```

Error message:
```json
{
    status : "error",
    message : "This is a error message"
}
```

## Special thanks

A special thanks goes to the following persons for special support:

* Michael Klishin <mklishin@pivotal.io>

(C) 2015 - marbis GmbH
The NITRAPI is protected via oAuth 2.0. For more information please visit the official [oAuth](http://oauth.net/2/) website.

# Applications

If you want to use the NITRAPI you need to register a own application. To create a new application please take a look into our [development area](https://server.nitrado.net/developer/index). After registering the application you will receive a APP ID and APP secret for accessing the oAuth endpoint. 

# oAuth2

- https://oauth.nitrado.net/oauth/v2/auth

This is the authentication endpoint for accessing a Nitrado account.

- https://oauth.nitrado.net/oauth/v2/token

This is the token endpoint for requesting a refresh token.

## Access tokens

Each access token expires after 30 days.
The access token will be also invalid if the user explicitly rejects your application from the Nitrado website.
You can pass the access token as GET/POST parameter or in the header as 'Authorization: Bearer XXXXXXXXXXXX'.

## Scopes

Scopes let you specify exactly what type of access you need. Scopes limit access for access tokens. 
Every access token need one or more scopes (space separated).

The user will be asked for the requested scopes at the authorize form.

The following scopes are supported at the moment. 


| Scope                |  Description   |
| -------------------- | -------------: |
| user_info            | Gives you access to the personal information of a Nitrado account. Like e-mail address, credits, birthday,.. |
| service              | Allows you to access (read and write) to the customers services. |
| service_order        | This scope allows you to spend money of the user and order a new service. | 




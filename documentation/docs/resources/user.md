## GET /user

The user resource gives you information about your user profile.

Request:
```
GET /user?access_token=<access_token>
```

Example Response:
```json
{
   "status":"success",
   "data":{
      "user":{
         "user_id":1337,
         "username":"Marty",
         "timezone":"America/Los_Angeles",
         "email":"marty.mcfly@biffco.com",
         "credit":1955,
         "currency":"EUR",
         "registred":"1985-25-10T01:15:00.000+00:00",
         "language":"eng",
         "avatar":"https://server.nitrado.net/users.nitrado/1337.jpg",
         "profile":{
            "name":"Marty McFly",
            "street":"DeLorean Street 12",
            "postcode":"2209",
            "city":"Hill Valley"
         }
      }
   }
}
```

## GET /user/webinterface_token

To access the webinterface you need a special access token with a lifetime of 24 hours.
You can request this access token via this endpoint.

The token will only change every 24 hours and will be cached.
For detailed information about the Webinterface Login please [click here](/resources/webinterface/).

Request:
```
GET /user/webinterface_token?access_token=<access_token>
```

Example Response:
```json
{
   "status":"success",
   "data":{
      "token":{
         "token":"mRtAApJS2XXXXXXXXXXXXXXXXXw6scyt9g7CsKAfg0MpjMQ5PfXXXXXXXXXXXXXXXXXXW",
         "valid_until":"2016-01-22T14:01:03"
      }
   }
}
```

## DELETE /user/webinterface_token

This endpoint allows you to logout all users from your webinterface.

Request:
```
DELETE /user/webinterface_token?access_token=<access_token>
```

Example Response:
```json
{
   "status":"success",
   "message":"All webinterface tokens has been expired from the system."
}
```
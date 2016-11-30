## GET /token

The token endpoint returns you information about the given access token.

Request:
```
GET /token?access_token=<access_token>
```

Response:
```json
{
   "status":"success",
   "data":{
      "token":{
         "access_token":"NXXXXXXXXXXXXXXXXXXXXXXkYjViYzIxXXXXXXXXXXXXXXXXXwMWNhNjU0ZQ",
         "user":{
            "id":1,
            "username":"Tyrola"
         },
         "valid_until":"2018-07-29T02:01:55",
         "scopes":[
            "user_info",
            "service",
            "service_order"
         ],
         "employee":false
      }
   }
}
```
## POST /gameservers/settings

Updates a value of a specific setting.

Request:
```
POST /services/<id>/gameservers/settings?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

POST Parameter:
```
category=config
key=mysetting
value=true
```

Response:
```json
{
   "status":"success",
   "data":{
      "settings":{
         "config":{
            "mysetting":"true"
         }
      }
   }
}
```


## GET /gameservers/settings/sets

Lists all available config sets.

Request:
```
GET /services/<id>/gameservers/settings/sets?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_READ
```

Response:
```json
{
   "status":"success",
   "data":{
      "sets":[
         {
            "id":2,
            "name":"2015-05-27 14:54:38 +0200",
            "game":"bf4",
            "data":{
               "config":{
                  "configkey":"configvalue2",
               }
            },
            "datetime":"2015-05-27T14:54:38.000+02:00",
            "backup_id":null
         },
         {
            "id":1,
            "name":"2015-05-27 13:56:00 +0200",
            "game":"bf4",
            "data":{
               "config":{
                  "configkey":"configvalue1",
               }
            },
            "datetime":"2015-05-27T13:56:00.000+02:00",
            "backup_id":null
         }
      ]
   }
}
```

## POST /gameservers/settings/sets

Creates a new config set with the current settings.

Request:
```
POST /services/<id>/gameservers/settings/sets?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

POST Parameter:
```
name=My new config set (optional)
```

Response:
```json
{
   "status":"success",
   "message":"Set has been created"
}
```

## DELETE /gameservers/settings/sets/:id

Deletes a specific config set.

Request:
```
DELETE /services/<id>/gameservers/settings/sets/<id>?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "message":"Set has been deleted"
}
```


## POST /gameservers/settings/sets/:id/restore

Restores a specific config set.

Request:
```
POST /services/<id>/gameservers/settings/sets/<id>/restore?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_SETTINGS_WRITE
```

Response:
```json
{
   "status":"success",
   "message":"Set has been restored"
}
```


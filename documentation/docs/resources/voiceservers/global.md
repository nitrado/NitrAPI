This are global commands are for voiceservers.

## GET /voiceservers

This command returns all voiceserver information which are available.

Under "specific" you can find specific information depending on your Voiceserver type.

Request:
```
GET /services/<id>/voiceservers?access_token=<access_token>
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "voiceserver":{  
         "type":"teamspeak3",
         "ip":"ts01.nitrado.net",
         "port":10000,
         "slots":4,
         "started":true,
         "setting_keys":[],
         "specific":{  
            "ts3_sid":1,
            "groups":[  
               {  
                  "sgid":162,
                  "name":"Server Admin",
                  "type":1,
                  "iconid":-865859070,
                  "savedb":1,
                  "sortid":0,
                  "namemode":0,
                  "n_modifyp":75,
                  "n_member_addp":75,
                  "n_member_removep":75
               },
               {  
                  "sgid":163,
                  "name":"Normal",
                  "type":1,
                  "iconid":0,
                  "savedb":1,
                  "sortid":0,
                  "namemode":0,
                  "n_modifyp":75,
                  "n_member_addp":75,
                  "n_member_removep":75
               },
               {  
                  "sgid":164,
                  "name":"Guest",
                  "type":1,
                  "iconid":0,
                  "savedb":0,
                  "sortid":0,
                  "namemode":0,
                  "n_modifyp":75,
                  "n_member_addp":0,
                  "n_member_removep":0
               }
            ],
            "snapshots":[  
               {  
                  "snapshot_id":142612,
                  "created_at":"2016-03-03T14:59:51"
               },
               {  
                  "snapshot_id":142616,
                  "created_at":"2016-03-03T15:05:46"
               },
               {  
                  "snapshot_id":142618,
                  "created_at":"2016-03-03T19:34:00"
               },
               {  
                  "snapshot_id":142620,
                  "created_at":"2016-03-03T19:34:02"
               }
            ],
            "admin_token":"mvFN8N0jLHvv9TXe1EDmi30J3AkiflR8lTBzzkw0"
         }
      }
   }
}
```

## POST /voiceservers/restart

Starts or restarts the voiceserver. 

Request:
```
POST /services/<id>/voiceservers/restart?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{
  "status": "success",
  "message": "The Voiceserver has been (re)started."
}
```


## POST /voiceservers/stop

Stopps the voiceserver. 
Notice: Not supported by Mumble.

Request:
```
POST /services/<id>/voiceservers/stop?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{
  "status": "success",
  "message": "The Voiceserver has been stopped."
}
```


## POST /voiceservers/reinstall

Reinstalls the voiceserver. 

Request:
```
POST /services/<id>/voiceservers/reinstall?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

Response:
```json
{
  "status": "success",
  "message": "The Voiceserver has been reinstalled."
}
```


## POST /voiceservers/update

Updates settings on the voiceserver. 
The available setting keys depending on your Voiceserver type.

| Keys                 | Supported Types  | Description    |
| -------------------- | ---------------  | -------------: |
| password             | Mumble, Ventrilo | Updates the server join password. |
| admin_password       | Mumble, Ventrilo | Updates the server admin password. |
| server_name          | Ventrilo         | Updates the server name. |
| codec                | Ventrilo         | Updates the server codec. |
| slots                | Ventrilo         | Updates the server slots. |

Request:
```
POST /services/<id>/voiceservers?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

POST Parameters:
```
key=<key of the setting>
value=<value of the setting>
```

Response:
```json
{
  "status": "success",
  "message": "The settings of your Voiceserver has been successfully changed."
}
```
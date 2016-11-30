Services are your rented products. This resources are very terrific. Be careful with your services, all actions are definite.

## GET /services

Get a full list with all rented services and/or services with subuser permissions.

Request:
```
GET /services?access_token=<access_token>
```

Response:
```json
{
   "status":"success",
   "data":{
      "services":[
         {
            "id":3,
            "status":"active",
            "websocket_token":"b05ac3d5d71a8858fca3011a8c179f1d9ec5ab41",
            "user_id":2,
            "auto_extension":false,
            "type":"gameserver",
            "details":{  
               "address":"10.10.0.6:27015",
               "name":"Nitrado.net Battlefield 4 Server",
               "game":"Battlefield 4",
               "portlist_short":"bf4",
               "folder_short":"bf4"
            },
            "username":"ni2_1",
            "roles":[
               "ROLE_OWNER"
            ]
         },
         {
            "id":6,
            "status":"active",
            "websocket_token":"49232226bcf1568bbc2b659325a3339d3af57fea",
            "user_id":1,
            "auto_extension":false,
            "type":"gameserver",
            "details":{  
               "address":"10.10.0.7:27015",
               "name":"Nitrado.net Minecraft Server",
               "game":"Minecraft",
               "portlist_short":"mcr",
               "folder_short":"minecraft"
            },
            "username":"ni1_1",
            "roles":[
               "ROLE_GAMESERVER_CHANGE_GAME",
               "ROLE_WEBINTERFACE_GENERAL_CONTROL",
               "ROLE_WEBINTERFACE_SETTINGS_READ",
               "ROLE_WEBINTERFACE_SETTINGS_WRITE",
               "ROLE_WEBINTERFACE_LOGS_READ",
               "ROLE_WEBINTERFACE_SCHEDULED_RESTART_READ",
               "ROLE_WEBINTERFACE_SCHEDULED_RESTART_WRITE",
               "ROLE_WEBINTERFACE_BACKUPS_READ",
               "ROLE_WEBINTERFACE_BACKUPS_WRITE",
               "ROLE_WEBINTERFACE_FTP_CREDENTIALS_READ",
               "ROLE_WEBINTERFACE_FTP_CREDENTIALS_WRITE",
               "ROLE_WEBINTERFACE_MYSQL_CREDENTIALS_READ",
               "ROLE_WEBINTERFACE_DEBUG_CONSOLE_READ",
               "ROLE_WEBINTERFACE_DEBUG_CONSOLE_WRITE",
               "ROLE_WEBINTERFACE_FILEBROWSER_READ",
               "ROLE_WEBINTERFACE_FILEBROWSER_WRITE",
               "ROLE_WEBINTERFACE_GAME_RCON_READ",
               "ROLE_WEBINTERFACE_GAME_RCON_WRITE",
               "ROLE_WEBINTERFACE_MYSQL_CREDENTIALS_WRITE"
            ]
         }
      ]
   }
}
```

**Available roles and description**

* ROLE_GAMESERVER_CHANGE_GAME: Can change server game
* ROLE_WEBINTERFACE_GENERAL_CONTROL: Can use generic control commands
* ROLE_WEBINTERFACE_BACKUPS_READ: Can view current backups
* ROLE_WEBINTERFACE_BACKUPS_WRITE: Can restore available backups
* ROLE_WEBINTERFACE_DEBUG_CONSOLE_READ: Can view the debug console
* ROLE_WEBINTERFACE_DEBUG_CONSOLE_WRITE: Can use the debug console
* ROLE_WEBINTERFACE_FILEBROWSER_READ: Can view/download files from the file server
* ROLE_WEBINTERFACE_FILEBROWSER_WRITE: Can change/upload files via file server
* ROLE_WEBINTERFACE_FTP_CREDENTIALS_READ Can see ftp access credentials
* ROLE_WEBINTERFACE_FTP_CREDENTIALS_WRITE: Can change ftp access credentials
* ROLE_WEBINTERFACE_GAME_RCON_READ: Allows a user to send RCON-commands that retrieve infos
* ROLE_WEBINTERFACE_GAME_RCON_WRITE: Allows a user to send RCON-commands that change settings
* ROLE_WEBINTERFACE_LOGS_READ: Can see webinterface logs
* ROLE_WEBINTERFACE_MYSQL_CREDENTIALS_READ: Can view MySQL access credentials
* ROLE_WEBINTERFACE_MYSQL_CREDENTIALS_WRITE: Can change MySQL access credentials
* ROLE_WEBINTERFACE_SCHEDULED_RESTART_READ: Can view scheduled server restarts
* ROLE_WEBINTERFACE_SCHEDULED_RESTART_WRITE: Can edit scheduled server restarts
* ROLE_WEBINTERFACE_SETTINGS_READ: Has access to server settings
* ROLE_WEBINTERFACE_SETTINGS_WRITE: Can change server settings


**Available status codes**

* active: The service is active and useable
* installing: The service is currently installing
* suspended: The service is suspended and can be reactivated
* adminlocked: The service is admin locked, please contact support.
* adminlocked_suspended: The service is admin locked and suspended.


## GET /services/:id

Get all service informations by a specific service id.

Request:
```
GET /services/<id>?access_token=<access_token>
```

Response:
```json
{
   "status":"success",
   "data":{
      "service":{
         "id":3,
         "status":"active",
         "websocket_token":"b05ac3d5d71a8858fca3011a8c179f1d9ec5ab41",
         "user_id":2,
         "username":"ni2_2",
         "auto_extension":false,
         "type":"gameserver",
         "details":{  
            "address":"10.10.0.6:27015",
            "name":"Nitrado.net Battlefield 4 Server",
            "game":"Battlefield 4",
            "portlist_short":"bf4",
            "folder_short":"bf4"
         },
         "start_date":1422455269,
         "suspend_date":1425048169,
         "delete_date":1425652969
      }
   }
}
```



## GET /services/:id/auto_extend

Returns auto extension information and status.

Request:
```
GET /services/<id>/auto_extend?access_token=<access_token>
```

Permission:
```
- ROLE_OWNER
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "auto_extend":[  
         {  
            "id":0,
            "name":"NONE",
            "active":true,
            "description":"Disable automatic extension",
            "available":true,
            "payment_method":null,
            "rental_times":{  
               "72":300,
               "720":1200,
               "2160":3200,
               "8760":12000
            }
         },
         {  
            "id":1,
            "name":"CREDITS_ONLY",
            "active":false,
            "description":"Extend with credits",
            "available":true,
            "payment_method":null,
            "rental_times":{  
               "72":300,
               "720":1200,
               "2160":3200,
               "8760":12000
            }
         },
         {  
            "id":2,
            "name":"PAYPAL_CREDITS_FIRST",
            "active":false,
            "description":"Extend with Paypal, use credits first",
            "available":true,
            "payment_method":"gc_paypal",
            "rental_times":{  
               "72":300,
               "720":1200,
               "2160":3200,
               "8760":12000
            }
         },
         {  
            "id":52,
            "name":"PAYPAL",
            "active":false,
            "description":"Extend with Paypal",
            "available":true,
            "payment_method":"gc_paypal",
            "rental_times":{  
               "72":300,
               "720":1200,
               "2160":3200,
               "8760":12000
            }
         }
      ]
   }
}
```


## POST /services/:id/auto_extend

Get all service informations by a specific service id.

Request:
```
POST /services/<id>/auto_extend?access_token=<access_token>
```

Permission:
```
- ROLE_OWNER
```

POST Parameters:
```
auto_extend_id=0 (0 means disabled otherwise select id) 
rental_time=720 (Selected rental time in hours) 
```

Response:
```json
{  
   "status":"success",
   "message":"The auto extension has been disabled."
}
```


## POST /services/:id/logs

Returns the all log entries for the service. This action shows all done API requests.

Request:
```
GET /services/<id>/logs?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_LOGS_READ
```

GET Parameters:
```
page=2 (optional)
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "current_page":1,
      "logs_per_page":40,
      "page_count":1,
      "log_count":5,
      "logs":[  
         {  
            "user":"Tyrola",
            "category":"server",
            "message":"Restart",
            "created_at":"2015-10-07T00:31:23"
         },
         {  
            "user":"Tyrola",
            "category":"filebrowser",
            "message":"Has edited the file server.properties",
            "created_at":"2015-10-07T00:31:19"
         },
         {  
            "user":"Tyrola",
            "category":"server",
            "message":"Restart",
            "created_at":"2015-09-28T14:17:07"
         },
         {  
            "user":"Tyrola",
            "category":"server",
            "message":"Restart",
            "created_at":"2015-09-23T01:18:42"
         },
         {  
            "user":"Tyrola",
            "category":"server",
            "message":"Restart",
            "created_at":"2015-09-22T23:29:15"
         }
      ]
   }
}
```
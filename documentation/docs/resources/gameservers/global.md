This are global commands are for gameservers.

## GET /gameservers

This command returns all game server information which are available

Request:
```
GET /services/<id>/gameservers?access_token=<access_token>
```

Response:
```json
{
   "status":"success",
   "data":{
      "gameserver":{
         "status":"started",
         "websocket_token":"b05ac3d5d71a8858fca3011a8c179f1d9ec5ab41",
         "hostsystems":{
            "linux":{
               "hostname":"ms001.nitrado.net",
               "status":"online"
            }
         },
         "username": "ni1_1",
         "managed_root": false,
         "user_id": 1,
         "service_id": 1,
         "minecraft_mode":false,
         "ip":"127.0.0.1",
         "port":25565,
         "label": "ni",
         "type": "Gameserver",
         "memory": "Standard",
         "memory_total": 1024,
         "game":"mc",
         "modpacks":{  
            "mcrdns":{  
               "name":"Pixelmon Craft",
               "modpack_version":"4.0.6",
               "game_version":"1.8.4"
            }
         },
         "slots":4,
         "location":"DE",
         "credentials":{
            "ftp":{
               "hostname":"dev001.nitrado.net",
               "port":21,
               "username":"ni1_1",
               "password":"4x8x15x16x23x42"
            },
            "mysql":{
               "hostname":"dev001.nitrado.net",
               "port":3306,
               "username":"ni1_1",
               "password":"4x8x15x16x23x42",
               "database":"ni1_1_DB"
            }
         },
         "settings":{
            "base":{
                "dailyrestart":"false"
            },
            "config":{
               "pvp":"true",
               "friendlyfire":"false"
            }
         },
         "quota":{
            "block_usage":437656,
            "block_softlimit":10485760,
            "block_hardlimit":15728640,
            "file_usage":456,
            "file_softlimit":1200000,
            "file_hardlimit":2000000
         },
         "query":{
            "server_name":"Minecraft Server",
            "connect_ip":"127.0.0.1:25565",
            "map":"random",
            "version":"1.8",
            "player_current":1,
            "player_max":4,
            "players": [
               {
                  "id": 1,
                  "name": "Tyrola",
                  "bot": false,
                  "score": 0,
                  "frags": 0,
                  "deaths": 0,
                  "time": 31,
                  "ping": 8
               }
            ]
         }
      }
   }
}
```

List of possible gameserver types:

* Gameserver
* Gameserver_Basic
* Gameserver_EPS

List of possible memory types:

* Standard
* Advanced
* Professional
* Ultimate

List of possible status codes:

| Status Code                |  Description   | Game specific |
| -------------------------- | -------------- | ------------: |
| started                        | Will be returned if the gameserver is currently running. |
| stopped                        | The server is currently stopped.   |
| stopping                        | The server will be stopped now.                        | 
| restarting                        | The server is currently performing a restart.       | 
| suspended                        | Will be returned if the server is suspended, which means it needs to be reactivated on the website.          |
| guardian_locked                        | If your services are guardian protected, you are currently outside of the allowed times. |
| gs_installation                        | The server is currently performing a game switching action. |
| backup_restore                        | A backup will be restored now.. |
| backup_creation                        | A new backup will be created now. |
| chunkfix                        | The Server is running a chunkfix. | Minecraft |
| overviewmap_render                        | The Server is running a overview map rendering. | Minecraft |

## GET /gameservers/stats

Returns the usage statistics of the gameserver.
Optionally you can specify a time range between 1-24 hours.

GET Parameters:
```
hours=24 (optional)
```

Response:
```json
{  
   "status":"success",
   "data":{  
      "stats":{  
         "currentPlayers":[  
            [  
               0.0,
               1442849100
            ],
            [  
               0.0,
               1442849400
            ],
            [  
               0.0,
               1442849700
            ],
            [  
               0.0,
               1442850000
            ],
            [  
               0.0,
               1442850300
            ],
            ...
         ],
         "maxPlayers":[  
            [  
               4.0,
               1442849100
            ],
            [  
               4.0,
               1442849400
            ],
            [  
               4.0,
               1442849700
            ],
            ...
         ],
         "cpuUsage":[  
            [  
               2.0,
               1442849100
            ],
            [  
               2.0,
               1442849400
            ],
            [  
               2.0,
               1442849700
            ],
            ...
         ],
         "memoryUsage":[  
            [  
               346.0,
               1442849100
            ],
            [  
               346.0,
               1442849400
            ],
            [  
               346.0,
               1442849700
            ],
            ...
         ]
      }
   }
}
```

## POST /gameservers/restart

Starts or restarts the game server. Optional with restart message for restart.log.

Request:
```
POST /services/<id>/gameservers/restart?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

POST Parameters:
```
message=This message will be posted in the restart.log File (optional)
restart_message=This message will be posted in the Ingame Chat if available (optional)
```

Response:
```json
{
  "status": "success",
  "message": "Server will be restarted now"
}
```

## POST /gameservers/stop

Stopps the game server. Optional with stop message for restart.log

Request:
```
POST /services/<id>/gameservers/stop?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_GENERAL_CONTROL
```

POST Parameters:
```
message=This message will be posted in the restart.log File (optional)
stop_message=This message will be posted in the Ingame Chat if available (optional)
```

Response:
```json
{
  "status": "success",
  "message": "Server will be stopped now"
}
```


## POST /gameservers/ftp/password

Changes the ftp password from the gameserver.

Request:
```
POST /services/<id>/gameservers/ftp/password?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_FTP_CREDENTIALS_WRITE
```

POST Parameters:
```
password=ChestersMill
```

Response:
```json
{
  "status": "success",
  "message": "The ftp password has been changed"
}
```

## POST /gameservers/mysql/password

Changes the MySQL password from the gameservers database.

Request:
```
POST /services/<id>/gameservers/mysql/password?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_MYSQL_CREDENTIALS_WRITE
```

POST Parameters:
```
password=ChestersMill
```

Response:
```json
{
  "status": "success",
  "message": "The MySQL database password has been changed"
}
```

## POST /gameservers/mysql/reset

Truncates the MySQL database of the gameserver. Optionally you can set a new password.

Request:
```
POST /services/<id>/gameservers/mysql/reset?access_token=<access_token>
```

Permission:
```
- ROLE_WEBINTERFACE_MYSQL_CREDENTIALS_WRITE
```

POST Parameters:
```
password=ChestersMill (optional)
```

Response:
```json
{
  "status": "success",
  "message": "The MySQL database has been reset"
}
```